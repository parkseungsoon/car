package com.jslhrd.carproject.service.ad;

import com.jslhrd.carproject.domain.ad.AdDTO;

public interface AdService {
	
	
	//광고글 등록
	public int adInsert(AdDTO dto);
		
	//광고글 수정
	public int adModify(AdDTO dto);
}	
