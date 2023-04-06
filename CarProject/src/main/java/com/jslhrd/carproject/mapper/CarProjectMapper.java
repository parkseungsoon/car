package com.jslhrd.carproject.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.jslhrd.carproject.domain.purchase.CarDTO;

@Mapper
public interface CarProjectMapper {
	// 전체 리스트 판매리스트 불러오기
	public List<CarDTO> carSaleList();
	// 판매리스트 옵션 선택
	public List<CarDTO>carListOP(List<String> nameArr, List<String> dataArr);
	//페이지 + 옵션
	public List<CarDTO>carListOP1(List<String> nameArr, List<String> dataArr , int startIdx,int endIdx);
	//기본 페이지
	public List<CarDTO>carListOP2(int startIdx,int endIdx);
}
