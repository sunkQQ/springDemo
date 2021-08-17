package com.sunk.demo.common.utils;

/**
 * ID生成工具类
 *
 * @author sunk
 * @date 2020/12/3
 */
public class GenerateNoUtil {

    /**
     * 生成全局ID
     * @return
     */
    public static Long getNextIdValue() {
        String no = generateTime() + SequenceUtil.nextId();;
        return Long.valueOf(no);
    }

    /**
     * 获取时间
     * @return yyDD
     */
    private static String generateTime() {
        return DateUtils.dateTimeNow(DateUtils.YYDD);
    }
}
