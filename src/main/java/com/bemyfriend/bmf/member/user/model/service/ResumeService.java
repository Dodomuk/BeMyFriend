package com.bemyfriend.bmf.member.user.model.service;

import java.util.List;
import java.util.Map;

import com.bemyfriend.bmf.member.user.model.vo.UserResume;

public interface ResumeService {
	
	
	
	int uploadResume(Map<String, String> resume);
	
	int updateResume(Map<String, String> resume, int resIdx);
	
	List<UserResume> selectResume(String userId);
	
	List<String> selectService(int resIdx);
	
	UserResume viewResumeDetail(String userId, int resIdx);
	

}
