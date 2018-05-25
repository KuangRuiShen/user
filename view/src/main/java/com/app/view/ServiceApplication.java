package com.app.view;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;



/**
 * @author krs
 * @date 创建时间2017年7月20日  上午10:13:29
 * @describe 启动服务
 */


@SpringBootApplication
@MapperScan("com.app.view.mapper")
public class ServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(ServiceApplication.class, args);
	}
	

}
