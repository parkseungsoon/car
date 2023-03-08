package com.jslhrd.carproject.mapper.ad;

import org.apache.ibatis.annotations.Mapper;

import com.jslhrd.carproject.domain.ad.AdDTO;

@Mapper
public interface AdMapper {

	//광고글 등록
	public int adInsert(AdDTO dto);
	
	//광고글 수정
	public int adModify(AdDTO dto);
	
}
