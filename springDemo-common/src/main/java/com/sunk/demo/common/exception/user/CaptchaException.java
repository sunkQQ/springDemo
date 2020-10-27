package com.sunk.demo.common.exception.user;


/**
 * 验证码错误异常类
 * 
 * @author sunk
 * @date 2020年10月26日
 */

public class CaptchaException extends UserException {

	private static final long serialVersionUID = 1L;

	public CaptchaException() {
		super("user.jcaptcha.error", null);
	}

}
