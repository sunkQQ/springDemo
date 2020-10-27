package com.sunk.demo.common.exception.user;


/**
 * 用户错误记数异常类
 * 
 * @author sunk
 * @date 2020年10月26日
 */

public class UserPasswordRetryLimitCountException extends UserException {

	private static final long serialVersionUID = 1L;

	public UserPasswordRetryLimitCountException(int retryLimitCount) {
		super("user.password.retry.limit.count", new Object[] { retryLimitCount });
	}
}
