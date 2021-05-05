package com.bemyfriend.bmf.community.model_lawAndMedia.service;

import java.util.Map;


import com.bemyfriend.bmf.community.model_lawAndMedia.vo.Law;
import com.bemyfriend.bmf.community.model_lawAndMedia.vo.Media;

public interface LawMediaService {

	 public Map<String, Object> selectLawList(int currentPage); 

	 public Map<String, Object> selectMediaList(int currentPage); 
	

	 public Law viewLawId(int lawNo);
	 
	 public Media viewMediaId(int mediaNo);
}
