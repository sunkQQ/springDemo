package com.sunk.demo.shop.domain;

import com.sunk.demo.common.annotation.Excel;
import com.sunk.demo.common.core.domain.BaseEntity;

/**
 * 订单商品备注对象 store_order_goods_remark
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public class StoreOrderGoodsRemark extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** $column.columnComment */
	private Integer id;

	/** 订单id */
	@Excel(name = "订单id")
	private Integer orderId;

	/** 商品id */
	@Excel(name = "商品id")
	private Integer goodsId;

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public Integer getGoodsId() {
		return goodsId;
	}
}
