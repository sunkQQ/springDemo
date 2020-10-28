package com.sunk.demo.shop.domain;

import java.util.Date;

import com.sunk.demo.common.annotation.Excel;
import com.sunk.demo.common.core.domain.BaseEntity;

/**
 * 产品品牌对象 store_goods_brand
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public class StoreGoodsBrand extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** null */
	private Long id;

	/** 品牌logo */
	private String brandLogo;

	/** 品牌封面 */
	private String brandCover;

	/** 商品品牌名称 */
	@Excel(name = "商品品牌名称")
	private String brandTitle;

	/** 商品品牌描述 */
	private String brandDesc;

	/** 品牌图文信息 */
	private String brandDetail;

	/** 商品分类排序 */
	private Long sort;

	/** 商品状态 */
	@Excel(name = "商品状态")
	private Integer status;

	/** 删除状态(1删除,0未删除) */
	private Integer isDeleted;

	/** 创建时间 */
	@Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
	private Date createAt;

	public void setId(Long id) {
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	public void setBrandLogo(String brandLogo) {
		this.brandLogo = brandLogo;
	}

	public String getBrandLogo() {
		return brandLogo;
	}

	public void setBrandCover(String brandCover) {
		this.brandCover = brandCover;
	}

	public String getBrandCover() {
		return brandCover;
	}

	public void setBrandTitle(String brandTitle) {
		this.brandTitle = brandTitle;
	}

	public String getBrandTitle() {
		return brandTitle;
	}

	public void setBrandDesc(String brandDesc) {
		this.brandDesc = brandDesc;
	}

	public String getBrandDesc() {
		return brandDesc;
	}

	public void setBrandDetail(String brandDetail) {
		this.brandDetail = brandDetail;
	}

	public String getBrandDetail() {
		return brandDetail;
	}

	public void setSort(Long sort) {
		this.sort = sort;
	}

	public Long getSort() {
		return sort;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getStatus() {
		return status;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Date getCreateAt() {
		return createAt;
	}
}
