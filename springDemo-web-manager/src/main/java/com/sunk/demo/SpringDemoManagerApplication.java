package com.sunk.demo;

import com.sunk.demo.common.constant.StringConstants;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author sunk
 * @date 2020年10月13日
 */
@Slf4j
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class SpringDemoManagerApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(SpringDemoManagerApplication.class, args);
		System.out.println(StringConstants.IMG);
	}
}
