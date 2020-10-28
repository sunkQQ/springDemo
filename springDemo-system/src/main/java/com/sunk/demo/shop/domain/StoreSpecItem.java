package com.sunk.demo.shop.domain;

import com.sunk.demo.common.annotation.Excel;
import com.sunk.demo.common.core.domain.BaseEntity;

/**
 * 规格项对象 store_spec_item
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public class StoreSpecItem extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** 规格项id */
	private Long id;

	/** 规格id */
	@Excel(name = "规格id")
	private Long specId;

	/** 规格项 */
	@Excel(name = "规格项")
	private String item;

	private Boolean selected;

	public Boolean getSelected() {
		return selected;
	}

	public void setSelected(Boolean selected) {
		this.selected = selected;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	public void setSpecId(Long specId) {
		this.specId = specId;
	}

	public Long getSpecId() {
		return specId;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getItem() {
		return item;
	}
}
