package com.bemyfriend.bmf.recruitment.model.service;

import java.util.Map;

import com.bemyfriend.bmf.community.model_review.vo.Review;
import com.bemyfriend.bmf.recruitment.model.vo.Recruitment;

public interface RecruService {

	 public Map<String, Object> selectRecruList(int currentPage); 
	
	 public Recruitment viewRecruId(int jobNo);
	 
     public boolean deleteRecru(int no);
     
     //public void updateRecru(Recruitment recruitment);
     
     //public void pageViewCount(int no);
}
