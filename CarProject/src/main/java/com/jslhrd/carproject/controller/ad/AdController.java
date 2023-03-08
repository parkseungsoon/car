package com.jslhrd.carproject.controller.ad;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jslhrd.carproject.service.ad.AdService;

@Controller
@RequestMapping("Ad")
public class AdController {
	private static final Logger log = LoggerFactory.getLogger(AdController.class);
	
	@Autowired
	private AdService service;
	
	@GetMapping("ad_insert")
	public void adInsert() {
		log.info("adInsert");
	}
}
