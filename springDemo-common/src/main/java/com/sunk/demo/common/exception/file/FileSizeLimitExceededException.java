package com.sunk.demo.common.exception.file;


/**
 * 文件名大小限制异常类
 * 
 * @author sunk
 * @date 2020年10月26日
 */

public class FileSizeLimitExceededException extends FileException {

	private static final long serialVersionUID = 1L;

	public FileSizeLimitExceededException(long defaultMaxSize) {
		super("upload.exceed.maxSize", new Object[] { defaultMaxSize });
	}
}
