package com.bemyfriend.bmf.community.model_review.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_review.mapper.ReviewMapper;
import com.bemyfriend.bmf.community.model_review.service.ReviewService;
import com.bemyfriend.bmf.community.model_review.vo.Review;
import com.bemyfriend.bmf.community.model_review.vo.ReviewComment;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Inject
	private ReviewMapper mapper;
    
	@Override
	public Map<String, Object> selectReviewList(int currentPage) {

		Paging paging = Paging.builder()
				.currentPage(currentPage)
				.blockCnt(10)
				.cntPerPage(16)
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
	
	@Override
	public boolean deleteReview(int no) {
		System.out.println("게시물 삭제");
		return mapper.deleteReview(no);
	}
	
	public int insertDummi(Review review) {
		return mapper.insertDummi(review);
	}

	public Integer insertReview(Review review) {
		System.out.println("리뷰 게시판 게시글 추가" + review.getReviewNo());
		return mapper.insertReview(review);	
	}
	
	@Override
	public void updateReview(Review review) {
		System.out.println("게시글 수정");
		mapper.updateReview(review);
	}
	
	@Override
	public void viewCount(int no) {
		mapper.viewCount(no);
	}

	
}
