package com.jslhrd.carproject.controller.ad;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jslhrd.carproject.domain.ad.AdDTO;
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
	@PostMapping("ad_insert")
	public String adInsertPro(AdDTO dto, RedirectAttributes re) {
		log.info("adInsertPro");
		
		int row = service.adInsert(dto);
		re.addFlashAttribute("row", row);
		return "redirect:ad_insert_pro";		
	}
	@GetMapping("ad_winsert_pro")
	public void adInsertProPass() {
		log.info("adInsertProPass");
	}
	@GetMapping("ad_test")
	public void adTest() {
		log.info("adTest");
	}
}
