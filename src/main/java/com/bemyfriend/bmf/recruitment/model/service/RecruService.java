package com.bemyfriend.bmf.recruitment.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.bemyfriend.bmf.recruitment.model.vo.Recruitment;

public interface RecruService {

	 public Map<String, Object> selectRecruList(int currentPage); 
	
	 public Map<String,Object> viewRecruId(int view);
	 
     public int deleteRecru(int view);
     
     public void updateRecru(Recruitment recruitment, List<MultipartFile> files); 
     
     public void insertRecru(Recruitment recruitment, List<MultipartFile> files);
     
}
