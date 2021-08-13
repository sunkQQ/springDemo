package com.sunk.demo.common.utils;

/**
 * ID生成工具类
 *
 * @author sunk
 * @date 2020/12/3
 */
public class GenerateNoUtil {

    /**
     * 据KEY生成全局ID
     * @return
     */
    public static Long getNextIdValue() {
        String no = generateTime() + SequenceUtil.nextId();;
        return Long.valueOf(no);
    }

    private static String generateTime() {
        return DateUtils.dateTimeNow(DateUtils.YYDD);
    }
}
