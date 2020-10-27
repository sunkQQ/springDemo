package com.sunk.demo.common.exception;


/**
 * 业务异常
 * 
 * @author sunk
 * @date 2020年10月22日
 */

public class BusinessException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	protected final String message;

	public BusinessException(String message) {
		this.message = message;
	}

	public BusinessException(String message, Throwable e) {
		super(message, e);
		this.message = message;
	}

	@Override
	public String getMessage() {
		return message;
	}
}
