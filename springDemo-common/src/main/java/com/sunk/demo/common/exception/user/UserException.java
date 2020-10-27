package com.sunk.demo.common.exception.user;

import com.sunk.demo.common.exception.base.BaseException;

/**
 * 用户信息异常类
 * 
 * @author sunk
 * @date 2020年10月22日
 */
public class UserException extends BaseException {

	private static final long serialVersionUID = 1L;

	public UserException(String code, Object[] args) {
		super("user", code, args, null);
	}

}
