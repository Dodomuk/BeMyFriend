package com.bemyfriend.bmf.community.model_review.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_review.mapper.ReviewMapper;
import com.bemyfriend.bmf.community.model_review.service.ReviewService;
import com.bemyfriend.bmf.community.model_review.vo.Review;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Inject
	private ReviewMapper mapper;
    
	@Override
	public Map<String, Object> selectReviewList(int currentPage) {

		Paging paging = Paging.builder()
				.currentPage(currentPage)
				.blockCnt(10)
				.cntPerPage(20)
				.type("review")
				.total(mapper.selectContentCnt())
				.build();

		Map<String, Object> commandMap = new HashMap<String, Object>();
		
		commandMap.put("paging", paging);
		commandMap.put("reviewList", mapper.selectReviewList(paging));
		
		return commandMap;
	}
	
	@Override
	public Review viewId(int reviewNo) {
		return mapper.viewId(reviewNo);
	}
	
	public int insertDummi(Review review) {
		return mapper.insertDummi(review);
	}

	public Integer insertReview(Review review) {
		System.out.println("리뷰 게시판 게시글 추가" + review);
		return mapper.insertReview(review);	
	}




}
