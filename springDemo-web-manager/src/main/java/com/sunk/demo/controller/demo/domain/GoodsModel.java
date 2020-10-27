package com.sunk.demo.controller.demo.domain;


/**
 * 商品测试信息
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public class GoodsModel {

	/**
	 * 商品名称
	 */
	private String name;

	/**
	 * 商品重量
	 */
	private Integer weight;

	/**
	 * 商品价格
	 */
	private Double price;

	/**
	 * 商品种类
	 */
	private String type;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}
