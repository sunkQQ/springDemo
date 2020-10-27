package com.sunk.demo.common.exception.user;


/**
 * 用户账号已被删除
 * 
 * @author sunk
 * @date 2020年10月26日
 */

public class UserDeleteException extends UserException {

	private static final long serialVersionUID = 1L;

	public UserDeleteException() {
		super("user.password.delete", null);
	}
}
