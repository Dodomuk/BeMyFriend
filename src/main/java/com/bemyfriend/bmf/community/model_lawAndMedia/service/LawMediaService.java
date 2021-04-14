package com.bemyfriend.bmf.community.model_lawAndMedia.service;

import java.util.Map;

import com.bemyfriend.bmf.community.model_review.vo.Review;
import com.bemyfriend.bmf.community.model_review.vo.ReviewComment;

public interface LawMediaService {

	 public Map<String, Object> selectLawList(int currentPage); 

	 public Map<String, Object> selectMediaList(int currentPage); 
	
}
