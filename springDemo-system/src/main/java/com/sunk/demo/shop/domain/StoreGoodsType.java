package com.sunk.demo.shop.domain;

import com.sunk.demo.common.annotation.Excel;
import com.sunk.demo.common.core.domain.BaseEntity;

/**
 * 商品类型(商品模型)对象 store_goods_type
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public class StoreGoodsType extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** id自增 */
	private Integer id;

	/** 类型名称 */
	@Excel(name = "类型名称")
	private String name;

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}
}
