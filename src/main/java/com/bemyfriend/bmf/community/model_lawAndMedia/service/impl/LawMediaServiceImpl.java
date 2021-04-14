package com.bemyfriend.bmf.community.model_lawAndMedia.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_lawAndMedia.mapper.LawMediaMapper;
import com.bemyfriend.bmf.community.model_lawAndMedia.service.LawMediaService;

import com.bemyfriend.bmf.community.model_lawAndMedia.vo.Law;
import com.bemyfriend.bmf.community.model_lawAndMedia.vo.Media;

import com.bemyfriend.bmf.community.model_review.mapper.ReviewMapper;
import com.bemyfriend.bmf.community.model_review.service.ReviewService;
import com.bemyfriend.bmf.community.model_review.vo.Review;
import com.bemyfriend.bmf.community.model_review.vo.ReviewComment;

@Service
public class LawMediaServiceImpl implements LawMediaService {

	@Inject
	private LawMediaMapper mapper;
    
	@Override
	public Map<String, Object> selectLawList(int currentPage) {
		Paging paging = Paging.builder()
				.currentPage(currentPage)
				.blockCnt(5)
				.cntPerPage(6)
				.type("law")
				.total(mapper.selectLawCnt())
				.build();

		Map<String, Object> commandMap = new HashMap<String, Object>();
		
		commandMap.put("lawPaging", paging);
		commandMap.put("lawList", mapper.selectLawList(paging));
		
		return commandMap;
	}

	@Override
	public Law viewLawId(int lawNo) {
		return mapper.viewLawId(lawNo);
	}
	
	@Override
	public Map<String, Object> selectMediaList(int currentPage) {
		Paging paging = Paging.builder()
				.currentPage(currentPage)
				.blockCnt(5)
				.cntPerPage(6)
				.type("media")
				.total(mapper.selectMediaCnt())
				.build();

		Map<String, Object> commandMap = new HashMap<String, Object>();
		
		commandMap.put("mediaPaging", paging);
		commandMap.put("mediaList", mapper.selectMediaList(paging));
		
		return commandMap; 
	}


	@Override
	public Media viewMediaId(int mediaNo) {
		return mapper.viewMediaId(mediaNo);
	}


    

}
