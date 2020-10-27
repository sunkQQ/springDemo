package com.sunk.demo.common.exception.user;


/**
 * 角色锁定异常类
 * 
 * @author sunk
 * @date 2020年10月26日
 */

public class RoleBlockedException extends UserException {

	private static final long serialVersionUID = 1L;

	public RoleBlockedException() {
		super("role.blocked", null);
	}
}
