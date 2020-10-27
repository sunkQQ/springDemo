package com.sunk.demo.common.enums;

import lombok.Getter;

/**
 * 用户会话
 * 
 * @author sunk
 * @date 2020年10月22日
 */
@Getter
public enum OnlineStatus {

	/** 用户状态 */
	on_line("在线"),
	off_line("离线");

	private final String info;

	private OnlineStatus(String info) {
		this.info = info;
	}
}
