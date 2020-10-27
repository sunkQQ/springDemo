package com.sunk.demo.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author sunk
 * @date 2020年10月13日
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class SpringDemoApplication {
	
	private static final String IMG = "\r\n" + 
			"                   .::::.\r\n" + 
			"                 .::::::::.\r\n" + 
			"                :::::::::::\r\n" + 
			"            ..:::::::::::'\r\n" + 
			"          '::::::::::::'\r\n" + 
			"            .::::::::::\r\n" + 
			"       '::::::::::::::..\r\n" + 
			"            ..::::::::::::.\r\n" + 
			"          ``::::::::::::::::\r\n" + 
			"           ::::``:::::::::'        .:::.\r\n" + 
			"          ::::'   ':::::'       .::::::::.\r\n" + 
			"        .::::'      ::::     .:::::::'::::.\r\n" + 
			"       .:::'       :::::  .:::::::::' ':::::.\r\n" + 
			"      .::'        :::::.:::::::::'      ':::::.\r\n" + 
			"     .::'         ::::::::::::::'         ``::::.\r\n" + 
			" ...:::           ::::::::::::'              ``::.\r\n" + 
			"```` ':.          ':::::::::'                  ::::..\r\n" + 
			"                   '.:::::'                    ':'````..\r\n" + 
			"";
	
	public static void main(String[] args) {
		SpringApplication.run(SpringDemoApplication.class, args);
		System.out.println(IMG);
	}
}
