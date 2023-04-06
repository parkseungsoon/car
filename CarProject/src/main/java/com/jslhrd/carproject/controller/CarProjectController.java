package com.jslhrd.carproject.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jslhrd.carproject.domain.purchase.CarDTO;
import com.jslhrd.carproject.service.CarProjectService;

import lombok.AllArgsConstructor;


@Controller
@AllArgsConstructor
@RequestMapping("")
public class CarProjectController {
	private static final Logger log =
			LoggerFactory.getLogger(CarProjectController.class);
	
	private CarProjectService service;
	
	@GetMapping("purchase_list")
	public String PurchaseList(Model model) {
		List<CarDTO> list = service.carSaleList();
		model.addAttribute("list",list); 
		return "Purchase/purchase_list";
	}
	
	@GetMapping("ajaxTest")//Model model
	public String ajaxList() {
		
		return "Purchase/ajaxTest";
	}

	@GetMapping("ajaxTest1")
	@ResponseBody
	public List<CarDTO> ajaxList1() {
		List<CarDTO> list = service.carSaleList(); 
		return list;
	}
	@PostMapping("ajaxTest")
	@ResponseBody
	public List<CarDTO> ajaxList(@RequestBody List<Map<String, String>> valueArr) {
	     
		
	    List<String> nameArr = new ArrayList<>();
	    List<String> dataArr = new ArrayList<>();
	    //System.out.print(currentPage);
	    for (Map<String, String> map : valueArr) {
	    	nameArr.add(map.get("name"));
	    	dataArr.add(map.get("value"));
	    	System.out.print(nameArr);
	    	System.out.print(dataArr);
	    }
		List<CarDTO> list = service.carListOP(nameArr,dataArr);
	    return list;
	}
	
	@PostMapping("ajaxTest1")
	@ResponseBody
	public List<CarDTO> ajaxListOP(@RequestBody Map<String, Object> data) {
	     
		List<Map<String, String>> checkArr = (List<Map<String, String>>) data.get("checkArr");
	    int pageNum = (int) data.get("pageNum");
	    int startIdx = (int) data.get("startIdx");
	    int endIdx = (int) data.get("endIdx");
	    
	    System.out.println("pageNum :"+pageNum);
	    System.out.println("startIdx :"+startIdx);
	    System.out.println("endIdx :"+endIdx);
	    
	    List<String> nameArr = new ArrayList<>();
	    List<String> dataArr = new ArrayList<>();
	    //System.out.print(currentPage);
	    for (Map<String, String> map : checkArr) {
	    	nameArr.add(map.get("name"));
	    	dataArr.add(map.get("value"));
	    	System.out.print(nameArr);
	    	System.out.print(dataArr);
	    }
		List<CarDTO> list = service.carListOP1(nameArr,dataArr,startIdx,endIdx);
		
	    return list;
	}
	
	@PostMapping("ajaxTest2")
	@ResponseBody
	public List<CarDTO> ajaxListOP2(@RequestBody Map<String, Object> data) {
	     
	    int pageNum = (int) data.get("pageNum");
	    int startIdx = (int) data.get("startIdx");
	    int endIdx = (int) data.get("endIdx");
	    
	    System.out.println("pageNum :"+pageNum);
	    System.out.println("startIdx :"+startIdx);
	    System.out.println("endIdx :"+endIdx);
	    
	   // List<String> nameArr = new ArrayList<>();
	   // List<String> dataArr = new ArrayList<>();
	    
		List<CarDTO> list = service.carListOP2(startIdx,endIdx);
	    return list;
	}
}
	
	
