package com.sunk.demo.common.utils;

import java.lang.management.ManagementFactory;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.xml.stream.events.Characters;

import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.poi.ss.usermodel.DateUtil;
import org.springframework.util.Assert;

import com.sunk.demo.common.constant.NumberConstants;
import com.sunk.demo.common.constant.StringConstants;
import lombok.extern.slf4j.Slf4j;
import sun.rmi.runtime.Log;

/**
 * 时间工具类
 *
 * @author sunk
 * @date 2020年10月14日
 */
@Slf4j
public class DateUtils extends org.apache.commons.lang3.time.DateUtils {

    public static String YYYY = "yyyy";
    public static String YYYY_MM = "yyyy-MM";
    public static String YYYY_MM_DD = "yyyy-MM-dd";
    public static String YYYYMMDDHHMMSS = "yyyyMMddHHmmss";
    public static String YYYYMMDD = "yyyyMMdd";
    public static String YYYY_MM_DD_HH_MM_SS = "yyyy-MM-dd HH:mm:ss";
    public static String YYDD = "yyDD";

    /**
     * 00:00:00
     */
    public static final String FIRST_TIME = "00:00:00";

    public static final String T = "T";

    private static String[] parsePatterns = {"yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy-MM",
            "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm", "yyyy/MM", "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss",
            "yyyy.MM.dd HH:mm", "yyyy.MM"};

    /**
     * 获取当前Date型日期
     *
     * @return 当前日期
     * @auther sunk
     * @date 2020年10月14日
     */
    public static Date getNowDate() {
        return new Date();
    }

    /**
     * 获取当前日期, 默认格式为yyyy-MM-dd
     *
     * @return
     * @auther sunk
     * @date 2020年10月14日
     */
    public static String getDate() {
        return dateTimeNow(YYYY_MM_DD);
    }

    /**
     * 获取当前日期, 默认格式为yyyy-MM-dd HH:mm:ss
     *
     * @return
     * @auther sunk
     * @date 2020年10月14日
     */
    public static final String getTime() {
        return dateTimeNow(YYYY_MM_DD_HH_MM_SS);
    }

    /**
     * 获取当前日期, 默认格式为yyyyMMddHHmmss
     *
     * @return
     * @auther sunk
     * @date 2020年10月14日
     */
    public static final String dateTimeNow() {
        return dateTimeNow(YYYYMMDDHHMMSS);
    }

    /**
     * 获取当前日期
     *
     * @param format 格式，如: yyyyMMddHHmmss
     * @return
     * @auther sunk
     * @date 2020年10月14日
     */
    public static final String dateTimeNow(final String format) {
        return parseDateToStr(format, new Date());
    }

    /**
     * 时间格式转换
     *
     * @param date
     * @return yyyy-MM-dd
     * @auther sunk
     * @date 2020年10月14日
     */
    public static final String dateTime(final Date date) {
        return parseDateToStr(YYYY_MM_DD, date);
    }

    /**
     * 时间格式转换
     *
     * @param format 格式、如: yyyy-MM-dd HH:mm:ss
     * @param date   时间
     * @return format 格式的时间
     * @auther sunk
     * @date 2020年10月14日
     */
    public static final String parseDateToStr(final String format, final Date date) {
        return new SimpleDateFormat(format).format(date);
    }

    /**
     * 时间格式转换
     *
     * @param format 格式 如：yyyy-MM-dd HH:mm:ss
     * @param ts     时间
     * @return
     * @auther sunk
     * @date 2020年10月14日
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
     * @return yyyy/MM/dd
     * @auther sunk
     * @date 2020年10月14日
     */
    public static final String datePath() {
        Date now = new Date();
        return DateFormatUtils.format(now, "yyyy/MM/dd");
    }

    /**
     * 日期，即 年/月/日 如200808
     *
     * @return yyyyMMdd
     * @auther sunk
     * @date 2020年10月14日
     */
    public static final String dateTime() {
        Date now = new Date();
        return DateFormatUtils.format(now, YYYYMMDD);
    }

    /**
     * 日期型字符串转化为日期 格式
     *
     * @param str
     * @return Date
     * @auther sunk
     * @date 2020年10月14日
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
     * @return
     * @auther sunk
     * @date 2020年10月14日
     */
    public static Date getServerStartDate() {
        long time = ManagementFactory.getRuntimeMXBean().getStartTime();
        return new Date(time);
    }

    /**
     * 计算两个时间差
     *
     * @param endDate
     * @param nowDate
     * @return 1天2小时3分钟4秒"
     * @auther sunk
     * @date 2020年10月14日
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

    /**
     * long 转date, 返回Date格式
     *
     * @param millSec
     * @return
     */
    public static Date longToDate(Long millSec) {
        if (millSec == null) {
            return null;
        }
        return new Date(millSec);
    }

    /**
     * 日期转字符 默认格式：yyyy-MM-dd HH:mm:ss
     *
     * @param date
     * @return
     */
    public static String dateToString(Date date) {
        return dateToString(date, YYYY_MM_DD_HH_MM_SS);
    }

    /**
     * Date 对象转换成对应格式的 字符串
     *
     * @param date
     * @param format format – 格式化模板，为空时默认："yyyy-MM-dd HH:mm:ss"
     * @return
     */
    public static String dateToString(Date date, String format) {
        if (date == null) {
            return null;
        }
        SimpleDateFormat formater = new SimpleDateFormat(StringUtils.isEmpty(format) ? YYYY_MM_DD_HH_MM_SS : format.trim());
        return formater.format(date);
    }

    /**
     * 判断2个时间大小
     * 1>2 return 1
     * 1<2 reutrn -1
     * 1==2 return 0
     *
     * @param date1  时间1
     * @param date2  时间2
     * @param format 格式化类型，不传默认：yyyy-MM-dd HH:mm:ss
     * @return
     */
    public static int compareDate(String date1, String date2, String format) {
        Assert.notNull(date1, "date1不能为空");
        Assert.notNull(date2, "date2不能为空");
        DateFormat df = null;
        if (StringUtils.isEmpty(format)) {
            df = new SimpleDateFormat(YYYY_MM_DD_HH_MM_SS);
        } else {
            df = new SimpleDateFormat(format);
        }
        try {
            Date dt1 = df.parse(date1);
            Date dt2 = df.parse(date2);
            if (dt1.getTime() > dt2.getTime()) {
                return 1;
            } else if (dt1.getTime() < dt2.getTime()) {
                return -1;
            } else {
                return 0;
            }
        } catch (Exception exception) {
            log.error("时间对比异常", exception);
        }
        return 0;
    }

    /**
     * compare_date:判断2个时间大小
     * 1>2 return 1
     * 1<2 reutrn -1
     * 1==2 return 0
     *
     * @param date1 时间1
     * @param date2 时间2
     * @return
     */
    public static int compareDate(Date date1, Date date2) {
        try {
            if (date1.getTime() > date2.getTime()) {
                return 1;
            } else if (date1.getTime() < date2.getTime()) {
                return -1;
            } else {
                return 0;
            }
        } catch (Exception exception) {
            log.error("时间对比异常", exception);
        }
        return 0;
    }

    /**
     * 字符串转日期,支持两种格式：yyyy-MM-dd HH:mm:ss和yyyy-MM-dd，根据字符串长度来判断
     *
     * @param date
     * @return
     */
    public static Date stringToDate(String date) {
        if (StringUtils.isEmpty(date)) {
            return null;
        }
        DateFormat fmt = null;
        if (date.indexOf(T) > -1) {
            String[] timeArray = date.split("[+]");
            date = timeArray[0].replace(T, " ");
            fmt = new SimpleDateFormat(YYYY_MM_DD_HH_MM_SS);
        } else if (date.length() <= NumberConstants.INT_10) {
            fmt = new SimpleDateFormat(YYYY_MM_DD);
        } else if (date.length() == NumberConstants.INT_14) {
            fmt = new SimpleDateFormat(YYYYMMDDHHMMSS);
        } else {
            fmt = new SimpleDateFormat(YYYY_MM_DD_HH_MM_SS);
        }
        try {
            return fmt.parse(date);
        } catch (ParseException e) {
            log.error("时间转换失败", e);
            return null;
        }
    }

    /**
     * 得到两个日期相差距离多少自然周
     *
     * @param start
     * @param end
     * @return
     */
    public static int weeksBetweenDays(String start, String end) {
        Assert.notNull(start, "start不能为空");
        Assert.notNull(end, "end不能为空");
        int counts = 1;
        Calendar c = Calendar.getInstance();
        Calendar c1 = Calendar.getInstance();
        // 设置每周的第一天为星期一
        c.setFirstDayOfWeek(Calendar.MONDAY);
        c1.setFirstDayOfWeek(Calendar.MONDAY);

        if (compareDate(start + StringConstants.SPACE + FIRST_TIME, end + StringConstants.SPACE + FIRST_TIME, YYYY_MM_DD_HH_MM_SS) == 1) {
            String temp = start;
            start = end;
            end = temp;
        }

        Date startDate = stringToDate(getFirstDayOfWeek(stringToDate(start)));
        Date endDate = stringToDate(getLastDayOfWeek(stringToDate(end)));
        c.setTime(startDate);
        c1.setTime(endDate);
        int weekofYear = c.get(Calendar.WEEK_OF_YEAR);
        int weekofYear1 = c1.get(Calendar.WEEK_OF_YEAR);
        if (c.get(Calendar.YEAR) == c1.get(Calendar.YEAR)) {
            counts = weekofYear1 - weekofYear + 1;
        } else {
            int difyear = c1.get(Calendar.YEAR) - c.get(Calendar.YEAR);
            // 年份相差一年
            if (difyear == 1) {
                int startyearWeeks = getWeekNumByYear(c.get(Calendar.YEAR));
                String date = getYearWeekFirstDay(c.get(Calendar.YEAR), startyearWeeks);
                int ds = compareDate(stringToDate(date), stringToDate(start));
                // 这一年最后一周的开始一天小于用户选择的开始日期，比如，2009年最后一周的开始日期是2009-12-27号，所以开始日期大于或等于2009-12-27号的特殊处理。
                if (ds <= 0) {
                    counts = weekofYear1 - weekofYear + 1;
                } else {
                    counts = getWeekNumByYear(c.get(Calendar.YEAR)) - weekofYear + weekofYear1 + 1;
                }
            } else if (difyear > 1) {
                /* 年份相差大于一年时，要考虑到 */
                for (int i = 0; i <= difyear; i++) {
                    // 开始日期的年份+i，如2007-12-22到2011-01-09，这里是遍历出07年，08年，09年分别有多少个周
                    int startAllWeeks = getWeekNumByYear(c.get(Calendar.YEAR) + i);
                    if (i == 0) {
                        /* 开始日期这一年的周差，如果07-12-22是第51周，07年共有52个周，那么，这里得到1. */
                        counts = startAllWeeks - weekofYear;
                    } else if (i < difyear) {
                        /* 除开始日期与结束日期所在一年的年份的周差。也就是08年共有多少周 */
                        counts += startAllWeeks;
                    } else if (i == difyear) {
                        /* 加上09年所在的周 */
                        counts += weekofYear1;
                    }
                }
                counts += 1;
            }
        }
        return counts;
    }

    /**
     * 得到某年某周的第一天
     *
     * @param year
     * @param week
     * @return
     */
    public static String getFirstDayOfWeek(int year, int week) {
        Calendar c = new GregorianCalendar();
        c.set(Calendar.YEAR, year);
        c.set(Calendar.MONTH, Calendar.JANUARY);
        c.set(Calendar.DATE, 1);
        Calendar cal = (GregorianCalendar) c.clone();
        cal.add(Calendar.DATE, week * NumberConstants.INT_7);
        return getFirstDayOfWeek(cal.getTime());
    }

    /**
     * 取得指定日期所在周的第一天
     *
     * @param date
     * @return
     */
    public static String getFirstDayOfWeek(Date date) {
        Calendar c = new GregorianCalendar();
        c.setFirstDayOfWeek(Calendar.MONDAY);
        c.setTime(date);
        // Monday
        c.set(Calendar.DAY_OF_WEEK, c.getFirstDayOfWeek());
        return new SimpleDateFormat(YYYY_MM_DD).format(c.getTime());

    }

    /**
     * 得到某年某周的最后一天
     *
     * @param year
     * @param week
     * @return
     */
    public static String getLastDayOfWeek(int year, int week) {
        Calendar c = new GregorianCalendar();
        c.set(Calendar.YEAR, year);
        c.set(Calendar.MONTH, Calendar.JANUARY);
        c.set(Calendar.DATE, 1);
        Calendar cal = (GregorianCalendar) c.clone();
        cal.add(Calendar.DATE, week * NumberConstants.INT_7);
        return getLastDayOfWeek(cal.getTime());
    }

    /**
     * 取得指定日期所在周的最后一天
     *
     * @param date
     * @return
     */
    public static String getLastDayOfWeek(Date date) {
        Calendar c = new GregorianCalendar();
        c.setFirstDayOfWeek(Calendar.MONDAY);
        c.setTime(date);
        c.set(Calendar.DAY_OF_WEEK, c.getFirstDayOfWeek() + NumberConstants.INT_6);
        return new SimpleDateFormat(YYYY_MM_DD).format(c.getTime());
    }

    /**
     * 计算指定年度共有多少个周。
     *
     * @param year 格式 yyyy ，必须大于1900年度 小于9999年
     * @return
     */
    public static int getWeekNumByYear(int year) {
        if (year < NumberConstants.INT_1900 || year > NumberConstants.INT_9999) {
            throw new NullPointerException("年度必须大于等于1900年小于等于9999年");
        }
        // 每年至少有52个周 ，最多有53个周。
        int result = 52;
        String date = getYearWeekFirstDay(year, 53);
        // 判断年度是否相符，如果相符说明有53个周。
        if (date.substring(0, NumberConstants.INT_4).equals(year + "")) {
            result = 53;
        }
        return result;
    }

    /**
     * 计算某年某周的开始日期（每年度的第一个周，是包含第一个星期一的那个周）
     *
     * @param yearNum 格式 yyyy ，必须大于1900年度 小于9999年
     * @param weekNum 1到52或者53
     * @return 日期，格式为yyyy-MM-dd
     */
    public static String getYearWeekFirstDay(int yearNum, int weekNum) {
        Calendar cal = Calendar.getInstance();
        // 设置每周的第一天为星期一
        cal.setFirstDayOfWeek(Calendar.MONDAY);
        // 每周从周一开始
        cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
        // 上面两句代码配合，才能实现，每年度的第一个周，是包含第一个星期一的那个周。

        // 设置每周最少为7天
        cal.setMinimalDaysInFirstWeek(7);
        cal.set(Calendar.YEAR, yearNum);
        cal.set(Calendar.WEEK_OF_YEAR, weekNum);

        // 分别取得当前日期的年、月、日
        return dateToString(cal.getTime(), YYYY_MM_DD);
    }

    public static void main(String[] args) {
        System.out.println(parseDate("2020-10-14"));
    }

}
