package com.sunk.demo.common.core.controller;

import java.beans.PropertyEditorSupport;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sunk.demo.common.core.domain.AjaxResult;
import com.sunk.demo.common.core.domain.AjaxResult.Type;
import com.sunk.demo.common.core.page.PageDomain;
import com.sunk.demo.common.core.page.TableDataInfo;
import com.sunk.demo.common.core.page.TableSupport;
import com.sunk.demo.common.utils.DateUtils;
import com.sunk.demo.common.utils.ServletUtils;
import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.common.utils.sql.SqlUtil;

/**
 * web层通用数据处理
 * 
 * @author sunk
 * @date 2020年10月14日
 */

public class BaseController {

	protected final Logger logger = LoggerFactory.getLogger(BaseController.class);

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {

			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(DateUtils.parseDate(text));
			}
		});
	}

	/**
	 * 设置请求分页数据
	 */
	protected void startPage() {
		PageDomain pageDomain = TableSupport.buildPageRequest();
		Integer pageNum = pageDomain.getPageNum();
		Integer pageSize = pageDomain.getPageSize();
		if (StringUtils.isNotNull(pageNum) && StringUtils.isNotNull(pageSize)) {
			String orderBy = SqlUtil.escapeOrderBySql(pageDomain.getOrderBy());
			PageHelper.startPage(pageNum, pageSize, orderBy);
		}
	}

	/**
	 * 设置请求排序数据
	 */
	protected void startOrderBy() {
		PageDomain pageDomain = TableSupport.buildPageRequest();
		if (StringUtils.isNotEmpty(pageDomain.getOrderBy())) {
			String orderBy = SqlUtil.escapeOrderBySql(pageDomain.getOrderBy());
			PageHelper.orderBy(orderBy);
		}
	}

	/**
	 * 获取request
	 * 
	 * @return
	 */
	public HttpServletRequest getRequest() {
		return ServletUtils.getRequest();
	}

	/**
	 * 获取response
	 * 
	 * @return
	 */
	public HttpServletResponse getResponse() {
		return ServletUtils.getResponse();
	}

	/**
	 * 获取session
	 * 
	 * @return
	 */
	public HttpSession getSession() {
		return getRequest().getSession();
	}

	/**
	 * 响应请求分页数据
	 * 
	 * @param list
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	protected TableDataInfo getDataTable(List<?> list) {
		TableDataInfo rspData = new TableDataInfo();
		rspData.setCode(0);
		rspData.setRows(list);
		rspData.setTotal(new PageInfo(list).getTotal());
		return rspData;
	}

	/**
	 * 响应返回结果
	 * 
	 * @param rows 影响行数
	 * @return 操作结果
	 */
	protected AjaxResult toAjax(int rows) {
		return rows > 0 ? success() : error();
	}

	/**
	 * 响应返回结果
	 * 
	 * @param result
	 * @return
	 */
	protected AjaxResult toAjax(boolean result) {
		return result ? success() : error();
	}

	/**
	 * 返回成功
	 * 
	 * @return
	 */
	public AjaxResult success() {
		return AjaxResult.success();
	}

	/**
	 * 返回失败消息
	 * 
	 * @return
	 */
	public AjaxResult error() {
		return AjaxResult.error();
	}

	/**
	 * 返回成功消息
	 * 
	 * @param message
	 * @return
	 */
	public AjaxResult success(String message) {
		return AjaxResult.success(message);
	}

	/**
	 * 返回失败消息
	 * 
	 * @param message
	 * @return
	 */
	public AjaxResult error(String message) {
		return AjaxResult.error(message);
	}

	/**
	 * 返回错误码消息
	 * 
	 * @param type
	 * @param message
	 * @return
	 */
	public AjaxResult error(Type type, String message) {
		return new AjaxResult(type, message);
	}

	/**
	 * 页面跳转
	 * 
	 * @param url
	 * @return
	 */
	public String redirect(String url) {
		return StringUtils.format("redirect:{}", url);
	}
}
