package com.bemyfriend.bmf.kmap.model.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.kmap.model.repository.KmapRepository;
import com.bemyfriend.bmf.kmap.model.service.KmapService;


@Service
@Repository
public class KmapServiceImpl implements KmapService{
	
private final KmapRepository kmapRepository;
	
	public KmapServiceImpl(KmapRepository kmapRepository) {
		this.kmapRepository=kmapRepository;
	}

	@Override
	public Map<String, Object> selectCompanyLocation() {
		
		System.out.println("serviceImpl : "+kmapRepository.selectCompanyLocation());
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		commandMap.put("kmapList", kmapRepository.selectCompanyLocation());
		
		return commandMap;
	}

}
