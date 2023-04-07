package com.jslhrd.carproject.service.ad;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jslhrd.carproject.domain.ad.AdDTO;
import com.jslhrd.carproject.mapper.ad.AdMapper;

@Service
public class AdServiceImpl implements AdService {
	@Autowired
	private AdMapper mapper;
	
	@Override
	public int adInsert(AdDTO dto) {		
		return mapper.adInsert(dto);
	}
	@Override
	public int adModify(AdDTO dto) {
		return mapper.adModify(dto);
	}
}
