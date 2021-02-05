package com.sunk.demo.common.utils;

import org.apache.commons.lang3.time.DateFormatUtils;

import java.lang.management.ManagementFactory;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 时间工具类
 * 
 * @author sunk
 * @date 2020年10月14日
 */

public class DateUtils extends org.apache.commons.lang3.time.DateUtils {

	public static String YYYY = "yyyy";

	public static String YYYY_MM = "yyyy-MM";

	public static String YYYY_MM_DD = "yyyy-MM-dd";

	public static String YYYYMMDDHHMMSS = "yyyyMMddHHmmss";

	public static String YYYYMMDD = "yyyyMMdd";

	public static String YYYY_MM_DD_HH_MM_SS = "yyyy-MM-dd HH:mm:ss";

	private static String[] parsePatterns = { "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy-MM",
			"yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm", "yyyy/MM", "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss",
			"yyyy.MM.dd HH:mm", "yyyy.MM" };

	/**
	 * 获取当前Date型日期
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @return 当前日期
	 */
	public static Date getNowDate() {
		return new Date();
	}

	/**
	 * 获取当前日期, 默认格式为yyyy-MM-dd
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @return
	 */
	public static String getDate() {
		return dateTimeNow(YYYY_MM_DD);
	}

	/**
	 * 获取当前日期, 默认格式为yyyy-MM-dd HH:mm:ss
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @return
	 */
	public static final String getTime() {
		return dateTimeNow(YYYY_MM_DD_HH_MM_SS);
	}

	/**
	 * 获取当前日期, 默认格式为yyyyMMddHHmmss
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @return
	 */
	public static final String dateTimeNow() {
		return dateTimeNow(YYYYMMDDHHMMSS);
	}

	/**
	 * 获取当前日期
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @param format 格式，如: yyyyMMddHHmmss
	 * @return
	 */
	public static final String dateTimeNow(final String format) {
		return parseDateToStr(format, new Date());
	}

	/**
	 * 时间格式转换
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @param date
	 * @return yyyy-MM-dd
	 */
	public static final String dateTime(final Date date) {
		return parseDateToStr(YYYY_MM_DD, date);
	}

	/**
	 * 时间格式转换
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @param format 格式、如: yyyy-MM-dd HH:mm:ss
	 * @param date   时间
	 * @return format 格式的时间
	 */
	public static final String parseDateToStr(final String format, final Date date) {
		return new SimpleDateFormat(format).format(date);
	}

	/**
	 * 时间格式转换
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @param format 格式 如：yyyy-MM-dd HH:mm:ss
	 * @param ts     时间
	 * @return
	 */
	public static final Date dateTime(final String format, final String ts) {
		try {
			return new SimpleDateFormat(format).parse(ts);
		} catch (ParseException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 日期路径 即年/月/日 如2018/08/08
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @return yyyy/MM/dd
	 */
	public static final String datePath() {
		Date now = new Date();
		return DateFormatUtils.format(now, "yyyy/MM/dd");
	}

	/**
	 * 日期，即 年/月/日 如200808
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @return yyyyMMdd
	 */
	public static final String dateTime() {
		Date now = new Date();
		return DateFormatUtils.format(now, YYYYMMDD);
	}

	/**
	 * 日期型字符串转化为日期 格式
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @param str
	 * @return Date
	 */
	public static Date parseDate(Object str) {
		if (str == null) {
			return null;
		}
		try {
			return parseDate(str.toString(), parsePatterns);
		} catch (ParseException e) {
			return null;
		}
	}

	/**
	 * 获取服务启动时间
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @return
	 */
	public static Date getServerStartDate() {
		long time = ManagementFactory.getRuntimeMXBean().getStartTime();
		return new Date(time);
	}

	/**
	 * 计算两个时间差
	 * 
	 * @auther sunk
	 * @date 2020年10月14日
	 * @param endDate
	 * @param nowDate
	 * @return 1天2小时3分钟4秒"
	 */
	public static String getDatePoor(Date endDate, Date nowDate) {
		long nd = 1000 * 24 * 60 * 60;
		long nh = 1000 * 60 * 60;
		long nm = 1000 * 60;
		long ns = 1000;
		// 获得两个时间的毫秒时间差异
		long diff = endDate.getTime() - nowDate.getTime();
		// 计算相差多少天
		long day = diff / nd;
		// 计算相差多少小时
		long hour = diff % nd / nh;
		// 计算相差多少分钟
		long min = diff % nd % nh / nm;
		// 计算相差多少秒
		long sec = diff % nd % nh % nm / ns;
		return day + "天" + hour + "小时" + min + "分钟" + sec + "秒";
	}

	/*public static String dateToString (Date date) { return dateToString(date) }
	
	public static String dateToString(Date date, String format) { if (date ==
				null) {
			return null;
		}
		SimpleDateFormat formater = new SimpleDateFormat("");
	}*/

	public static void main(String[] args) {
		System.out.println(parseDate("2020-10-14"));
	}

}
