package com.bemyfriend.bmf.community.model_review.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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

	public List<Review> selectReviewList(Paging paging) {
		
		paging = Paging.builder()
				.currentPage(1)
				.blockCnt(5)
				.cntPerPage(20)
				.type("review")
				.total(mapper.selectContentCnt())
				.build();

		return mapper.selectReviewList(paging);
	}

	public int insertDummi(Review review) {
		return mapper.insertBoard(review);
	}

	public Integer insertReview(Review review) {
		System.out.println("커뮤니티 서비스" + review);
		return mapper.insertReview(review);	
	}

}
