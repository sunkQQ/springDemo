package com.sunk.demo.framework.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

/**
 * 程序注解配置
 * 
 * @author sunk
 * @date 2020年10月19日
 */
@Configuration
// 表示通过aop框架暴漏该代理对象，AopContext能够访问
@EnableAspectJAutoProxy(exposeProxy = true)
// 指定要扫描的Mapper类的包的路径
@MapperScan("com.sunk.demo.**.mapper")
public class ApplicationConfig {

}
