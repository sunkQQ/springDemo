package com.sunk.demo.common.core.page;

import com.sunk.demo.common.constant.Constants;
import com.sunk.demo.common.utils.ServletUtils;

/**
 * 表格数据处理
 * 
 * @author sunk
 * @date 2020年10月14日
 */
public class TableSupport {
	/**
	 * 封装分页对象
	 * 
	 * @return
	 */
	public static PageDomain getPageDomain() {
		PageDomain pageDomain = new PageDomain();
		pageDomain.setPageNum(ServletUtils.getParameterToInt(Constants.PAGE_NUM));
		pageDomain.setPageSize(ServletUtils.getParameterToInt(Constants.PAGE_SIZE));
		pageDomain.setOrderByColumn(ServletUtils.getParameter(Constants.ORDER_BY_COLUMN));
		pageDomain.setIsAsc(ServletUtils.getParameter(Constants.IS_ASC));
		return pageDomain;
	}

	public static PageDomain buildPageRequest() {
		return getPageDomain();
	}
}
