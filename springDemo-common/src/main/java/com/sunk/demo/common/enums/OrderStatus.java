package com.sunk.demo.common.enums;


/**
 * 
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public enum OrderStatus {
	/** -1、已取消 */
	CANCEL(-1,"已取消"),
	/** 0、待付款 */
    UNPAY(0,"待付款"),
	/** 1、已付款 */
    PAYED(1,"已付款"),
	/** 2、已发货 */
    SENDED(2,"已发货"),
	/** 3、退货中 */
    RETURNING(3,"退货中"),
	/** 4、退货完成 */
    RETURNED(4,"退货完成"),
	/** 5、待评价 */
    UNCOMMENT(5,"待评价"),
	/** 已评价 */
    COMMENTED(6,"已评价");

	private int code;
	private String desc;

	OrderStatus(int code, String desc) {
		this.code = code;
		this.desc = desc;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	/**
	 * 自己定义一个静态方法,通过code返回枚举常量对象
	 * 
	 * @param code
	 * @return
	 */
	public static OrderStatus getValue(int code) {

		for (OrderStatus orderStatus : values()) {
			if (orderStatus.getCode() == code) {
				return orderStatus;
			}
		}
		return null;
	}
}
