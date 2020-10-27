package com.sunk.demo.common.core.page;

import com.sunk.demo.common.utils.StringUtils;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 分页数据
 * 
 * @author sunk
 * @date 2020年10月14日
 */
@Getter
@Setter
@ToString
public class PageDomain {

	/** 当前记录起始索引 */
	private Integer pageNum;
	/** 每页显示记录数 */
	private Integer pageSize;
	/** 排序列 */
	private String orderByColumn;
	/** 排列方向“desc”或者“asc” */
	private String isAsc;

	public String getOrderBy() {
		if (StringUtils.isEmpty(orderByColumn)) {
			return "";
		}
		return StringUtils.toUnderScoreCase(orderByColumn) + " " + isAsc;
	}
}
