package com.main.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.main")
public class SpringBootWebApplicationStart {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootWebApplicationStart.class, args);
	}
}
