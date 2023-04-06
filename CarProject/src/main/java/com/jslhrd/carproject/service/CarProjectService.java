package com.jslhrd.carproject.service;

import java.util.List;

import com.jslhrd.carproject.domain.purchase.CarDTO;

public interface CarProjectService {
	// 전체 리스트 판매리스트 불러오기
	public List<CarDTO> carSaleList();
	
	
	public List<CarDTO>carListOP(List<String> nameArr, List<String> dataArr);
	
	public List<CarDTO>carListOP1(List<String> nameArr, List<String> dataArr , int startIdx,int endIdx);
	
	public List<CarDTO>carListOP2(int startIdx,int endIdx);
}
