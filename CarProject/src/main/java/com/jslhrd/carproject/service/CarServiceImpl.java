package com.jslhrd.carproject.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jslhrd.carproject.domain.purchase.CarDTO;
import com.jslhrd.carproject.mapper.CarProjectMapper;

import lombok.AllArgsConstructor;


@AllArgsConstructor
@Service
public class CarServiceImpl implements CarProjectService {
	
	private static final Logger log=
			LoggerFactory.getLogger(CarServiceImpl.class);
	
	@Autowired
	private CarProjectMapper mapper;
	
	@Override
	public List<CarDTO> carSaleList() {

		return mapper.carSaleList();
	}
	
	@Override
	public List<CarDTO> carListOP(List<String> nameArr, List<String> dataArr) {
		return mapper.carListOP(nameArr,dataArr);
	}
	
	@Override
	public List<CarDTO> carListOP1(List<String> nameArr, List<String> dataArr, int startIdx, int endIdx) {
		return mapper.carListOP1(nameArr, dataArr, startIdx, endIdx);
	}
	
	@Override
	public List<CarDTO> carListOP2(int startIdx, int endIdx) {
		return mapper.carListOP2(startIdx, endIdx);
	}
}
