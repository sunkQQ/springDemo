package com.sunk.demo.common.enums;


/**
 * 用户状态
 * 
 * @author sunk
 * @date 2020年10月26日
 */

public enum UserStatus {
	/** 0、正常 */
	OK("0", "正常"),
	/** 1、停用 */
	DISABLE("1", "停用"),
	/** 2、删除 */
	DELETED("2", "删除");

	private final String code;
	private final String info;

	UserStatus(String code, String info) {
		this.code = code;
		this.info = info;
	}

	public String getCode() {
		return code;
	}

	public String getInfo() {
		return info;
	}
}
