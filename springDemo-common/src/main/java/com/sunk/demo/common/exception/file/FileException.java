package com.sunk.demo.common.exception.file;

import com.sunk.demo.common.exception.base.BaseException;

/**
 * 文件信息异常类
 * 
 * @author sunk
 * @date 2020年10月26日
 */

public class FileException extends BaseException {

	private static final long serialVersionUID = 1L;

	public FileException(String code, Object[] args) {
		super("file", code, args, null);
	}
}
