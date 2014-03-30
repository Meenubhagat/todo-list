package com.todolist.init;

import lombok.extern.slf4j.Slf4j;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Configuration
@Profile("test")
@Slf4j
public class SpringTestConfiguration {
	public SpringTestConfiguration() {
		System.out.println("ASDASD");
	}
}
