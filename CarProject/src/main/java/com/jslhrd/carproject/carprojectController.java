package com.jslhrd.carproject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("")
public class carprojectController {
	private static final Logger log = LoggerFactory.getLogger(carprojectController.class);
	
@GetMapping("index")
public void Index() {
	
}
}
