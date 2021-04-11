package com.bemyfriend.bmf.community.model_review.service;

import java.util.Map;

import com.bemyfriend.bmf.community.model_review.vo.Review;

public interface ReviewService {

	 public Map<String, Object> selectReviewList(int currentPage); 
	
	 public Review viewId(int reviewNo);
	 
     public boolean deleteReview(int no);
     
     public void updateReview(Review review);
     
     public void viewCount(int no);
}
