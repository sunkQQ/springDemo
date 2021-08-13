package com.sunk.demo.common.utils;


import com.baomidou.mybatisplus.core.toolkit.SystemClock;
import com.sunk.demo.common.constant.NumberConstants;
import lombok.extern.slf4j.Slf4j;

/**
 * 主键生产工具类，采用雪花算法(53位) 参考：https://blog.csdn.net/qq_16059847/article/details/104847445
 * 注意此方法每秒最多可以生产32768个ID，长度15位，超过就会报错
 *
 * @Author sunk
 * @Date 2021/8/13
 */
@Slf4j
public class SequenceUtil {

    /**long 1000，毫秒转秒除以1000*/
    private static final long LONG_1000            = 1000L;
    /** 初始偏移时间戳  2016-01-01 08:00:00*/
    private static final long OFFSET               = 1451606400L;
    /**timestamp bit长度*/
    private static final long TIMESTAMP_BIT        = 32;
    /** 机器id (0~31 保留 32~63作为备份机器) */
    public static long        WORKER_ID            = 0L;
    /** 机器id所占位数 (7bit, 支持最大机器数 2^7 = 128)*/
    private static final long WORKER_ID_BITS       = 7L;
    /** 自增序列所占位数 (14bit, 支持最大每秒生成 2^14 = ‭16384‬) */
    private static final long SEQUENCE_ID_BITS     = 14L;
    /** 机器id偏移位数 14 */
    private static final long WORKER_SHIFT_BITS    = SEQUENCE_ID_BITS;
    /** 自增序列偏移位数 14+7 */
    private static final long OFFSET_SHIFT_BITS    = SEQUENCE_ID_BITS + WORKER_ID_BITS;
    /** 备份机器ID开始位置 (2^7 / 2 = 64) */
    private static final long BACK_WORKER_ID_BEGIN = (1 << WORKER_ID_BITS) >> 1;
    /** 自增序列最大值 (2^14 - 1 = ‭16384‬) */
    private static final long SEQUENCE_MAX         = (1 << SEQUENCE_ID_BITS) - 1;
    /** 发生时间回拨时容忍的最大回拨时间 (秒) */
    private static final long BACK_TIME_MAX        = 1L;
    /** 上次生成ID的时间戳 (秒) */
    private static long       lastTimestamp        = 0L;
    /** 当前秒内序列 (2^14)*/
    private static long       sequence             = 0L;
    /** 备份机器上次生成ID的时间戳 (秒) */
    private static long       lastTimestampBak     = 0L;
    /** 备份机器当前秒内序列 (2^14)*/
    private static long       sequenceBak          = 0L;

    /** 私有构造函数禁止外部访问 */
    private SequenceUtil() {
    }

    /**
     * 获取自增序列
     * @return long
     */
    public static long nextId() {
        return nextId(SystemClock.now() / LONG_1000);
    }

    /**
     * 主机器自增序列
     * @param timestamp 当前Unix时间戳
     * @return long
     */
    private static synchronized long nextId(long timestamp) {
        // 时钟回拨检查
        if (timestamp < lastTimestamp) {
            // 发生时钟回拨
            log.warn("时钟回拨, 启用备份机器ID: now: [{}] last: [{}]", timestamp, lastTimestamp);
            return nextIdBackup(timestamp);
        }

        // 开始下一秒
        if (timestamp != lastTimestamp) {
            lastTimestamp = timestamp;
            sequence = 0L;
        }
        if (0L == (++sequence & SEQUENCE_MAX)) {
            // 秒内序列用尽
            //log.warn("秒内[{}]序列用尽, 启用备份机器ID序列", timestamp);
            sequence--;
            return nextIdBackup(timestamp);
        }

        return ((timestamp - OFFSET) << OFFSET_SHIFT_BITS) | (WORKER_ID << WORKER_SHIFT_BITS) | sequence;
    }

    /**
     * 备份机器自增序列
     * @param timestamp timestamp 当前Unix时间戳
     * @return long
     */
    private static long nextIdBackup(long timestamp) {
        if (timestamp < lastTimestampBak) {
            if (lastTimestampBak - (SystemClock.now() / LONG_1000) <= BACK_TIME_MAX) {
                timestamp = lastTimestampBak;
            } else {
                throw new RuntimeException(String.format("时钟回拨: now: [%d] last: [%d]", timestamp, lastTimestampBak));
            }
        }

        if (timestamp != lastTimestampBak) {
            lastTimestampBak = timestamp;
            sequenceBak = 0L;
        }

        if (0L == (++sequenceBak & SEQUENCE_MAX)) {
            // 秒内序列用尽
            log.warn("秒内[{}]序列用尽, 备份机器ID借取下一秒序列", timestamp);
            return nextIdBackup(timestamp + 1);
        }

        return ((timestamp - OFFSET) << OFFSET_SHIFT_BITS) | ((WORKER_ID ^ BACK_WORKER_ID_BEGIN) << WORKER_SHIFT_BITS) | sequenceBak;
    }

    /**
     * 以二进制位带-分隔符形式返回id
     *
     * @param snowId
     * @return
     */
    public static String toBinaryStringWithSplitSymbol(long snowId) {
        char[] bId = Long.toBinaryString(snowId).toCharArray();
        StringBuilder sb = new StringBuilder();
        //标志位
        sb.append("0").append('-');

        //时间戳
        Long timestamp = bId.length - OFFSET_SHIFT_BITS;
        Long zero = TIMESTAMP_BIT - timestamp;
        //时间戳前面补全0
        for (int i = 0; i < zero; i++) {
            sb.append(0);
        }
        for (int i = 0; i < timestamp; i++) {
            sb.append(bId[i]);
        }
        sb.append('-');

        //data center + work
        Long workLength = WORKER_ID_BITS;
        for (int i = timestamp.intValue(); i < timestamp + workLength; i++) {
            sb.append(bId[i]);
        }
        sb.append('-');
        //num seq
        for (int i = Long.valueOf(timestamp + workLength).intValue(); i < bId.length; i++) {
            sb.append(bId[i]);
        }
        return sb.toString();
    }

    /**
     * 从雪花id中计算出起始时间戳 ,例：1611988309
     *
     * @param snowId 雪花算法计算出的id
     * @return
     * @create  2021年1月30日 下午2:28:10 luochao
     * @history
     */
    public static Long getTimestamp(long snowId) {
        try {
            String binaryStringWithSplitSymbol = toBinaryStringWithSplitSymbol(snowId);
            return Long.parseUnsignedLong(binaryStringWithSplitSymbol.split("-")[NumberConstants.INT_1], NumberConstants.INT_2) + OFFSET;
        } catch (Exception e) {
            return null;
        }
    }

    /**
     * 从雪花id中计算出起始时间 , 例：2021-01-30 14:27:34
     *
     * @param snowId
     * @return
     * @create  2021年1月30日 下午2:28:50 luochao
     * @history
     */
    public static String getTime(long snowId) {
        try {
            return  DateUtils.dateToString(DateUtils.longToDate(getTimestamp(snowId) * LONG_1000));
        } catch (Exception e) {
            return null;
        }
    }

    /**
     * 从雪花id中计算出工作id , 例：0
     *
     * @param snowId
     * @return
     * @create  2021年1月30日 下午2:33:55 luochao
     * @history
     */
    public static Long getWorkId(long snowId) {
        try {
            String binaryStringWithSplitSymbol = toBinaryStringWithSplitSymbol(snowId);
            return Long.parseUnsignedLong(binaryStringWithSplitSymbol.split("-")[NumberConstants.INT_2]);
        } catch (Exception e) {
            return null;
        }
    }

    public static void main(String[] args) {
        long nextId = SequenceUtil.nextId();
        System.out.println(nextId);
        //从雪花id中计算出起始时间戳
        System.out.println(getTime(nextId));
        //从雪花id中计算出workId
        System.out.println(getWorkId(nextId));
    }
}
