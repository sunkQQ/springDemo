package com.sunk.demo;

import com.sunk.demo.common.constant.StringConstants;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * api启动程序
 *
 * @author sunk
 * @data 2020年3月31日
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class SpringDemoApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringDemoApiApplication.class, args);
		System.out.println(StringConstants.IMG);
	}



}
