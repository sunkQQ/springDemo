package com.sunk.demo.common.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 数据权限过滤注解
 * 
 * @author sunk
 * @date 2020年10月22日
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface DataScope {

	/**
	 * 部门表的别名
	 */
	public String deptAlias() default "";

	/**
	 * 用户表的别名
	 */
	public String userAlias() default "";
}
