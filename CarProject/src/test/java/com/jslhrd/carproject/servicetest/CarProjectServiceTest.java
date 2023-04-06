package com.jslhrd.carproject.servicetest;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.jslhrd.carproject.service.CarProjectService;



@SpringBootTest
public class CarProjectServiceTest {
	private static final Logger log = 
			LoggerFactory.getLogger("CarProjectServiceTest");
	
	@Autowired
	public CarProjectService service;
	
	@Test
	public void CarCount() {
	
	}
}
