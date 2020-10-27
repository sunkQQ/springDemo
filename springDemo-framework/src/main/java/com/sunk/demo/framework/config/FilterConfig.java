package com.sunk.demo.framework.config;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.DispatcherType;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;

import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.common.xss.XssFilter;

/**
 * Filter配置
 * 
 * @author sunk
 * @date 2020年10月19日
 */

public class FilterConfig {

	@Value("${xss.enabled}")
	private String enabled;

	@Value("${xss.excludes}")
	private String excludes;

	@Value("${xss.urlPatterns}")
	private String urlPatterns;

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Bean
	public FilterRegistrationBean xssFilterRegistration() {
		FilterRegistrationBean registration = new FilterRegistrationBean();
		registration.setDispatcherTypes(DispatcherType.REQUEST);
		registration.setFilter(new XssFilter());
		registration.addUrlPatterns(StringUtils.split(urlPatterns, ","));
		registration.setName("xssFilter");
		registration.setOrder(Integer.MAX_VALUE);
		Map<String, String> initParameters = new HashMap<String, String>();
		initParameters.put("excludes", excludes);
		initParameters.put("enabled", enabled);
		registration.setInitParameters(initParameters);
		return registration;
	}
}
