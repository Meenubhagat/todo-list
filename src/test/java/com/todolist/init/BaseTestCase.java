package com.todolist.init;

import lombok.extern.slf4j.Slf4j;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.todolist.data.DummyDataGenerator;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes = {WebAppConfig.class, SpringTestConfiguration.class })
@EnableWebMvc
@ActiveProfiles("test")
@Slf4j

public  abstract class BaseTestCase {
	
	@Autowired
	public DummyDataGenerator dummyDataGenerator;
	
	public BaseTestCase() {
		System.setProperty("spring.profiles.active", "test");
	}
}
