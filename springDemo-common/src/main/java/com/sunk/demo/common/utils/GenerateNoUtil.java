package com.sunk.demo.common.utils;

import com.sunk.demo.common.constant.NumberConstants;
import com.sunk.demo.common.enums.TableNameEnum;
import com.sunk.demo.common.utils.redis.RedisUtil;

/**
 * ID生成工具类
 *
 * @author sunk
 * @date 2020/12/3
 */
public class GenerateNoUtil {

    /** 所以id取模规则，不能超过3位 */
    private static final Long MO = 10000L;

    /** 位数补全 */
    private static final String ZERO = "0";

    /**
     * 据KEY生成全局ID
     * @param tableNameEnum
     * @return
     */
    public static Long getNextIdValue(TableNameEnum tableNameEnum) {
        String appName = "sunk";
        Long genNextIdValue = RedisUtil.incr(appName + "|#|" + tableNameEnum.getName(), 1L);
        String moNumber = String.valueOf(genNextIdValue % MO);
        String no = generateTime() + StringUtils.leftPad(moNumber.toString(), NumberConstants.INT_4, ZERO);
        return Long.valueOf(no);
    }

    private static String generateTime() {
        return DateUtils.dateTimeNow("yyMMddHHmmss");
    }
}
