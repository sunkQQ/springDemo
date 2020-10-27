package com.sunk.demo.common.exception.user;


/**
 * 用户锁定异常类
 * 
 * @author sunk
 * @date 2020年10月26日
 */

public class UserBlockedException extends UserException {

	private static final long serialVersionUID = 1L;

	public UserBlockedException() {
		super("user.blocked", null);
	}
}
