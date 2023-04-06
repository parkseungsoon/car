package com.jslhrd.carproject.mappertest;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.jslhrd.carproject.mapper.CarProjectMapper;

@SpringBootTest
public class CarProjectMapperTest {
	private static final Logger log = 
			LoggerFactory.getLogger("CarProjectMapperTest");
	
	@Autowired
	public CarProjectMapper mapper;
	
	@Test
	public void CarCount() {

	}
	
	
}
