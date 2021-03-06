package com.sunk.demo.controller.demo.domain;

import java.util.List;

/**
 * 客户测试信息
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public class CustomerModel {

	/**
	 * 客户姓名
	 */
	private String name;

	/**
	 * 客户手机
	 */
	private String phonenumber;

	/**
	 * 客户性别
	 */
	private String sex;

	/**
	 * 客户生日
	 */
	private String birthday;

	/**
	 * 客户描述
	 */
	private String remark;

	/**
	 * 商品信息
	 */
	private List<GoodsModel> goods;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public List<GoodsModel> getGoods() {
		return goods;
	}

	public void setGoods(List<GoodsModel> goods) {
		this.goods = goods;
	}

}
