package com.sunk.demo;

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
		System.out.println("Api启动=======》start");
		SpringApplication.run(SpringDemoApiApplication.class, args);
		System.out.println("Api启动=======》end");
	}
}
