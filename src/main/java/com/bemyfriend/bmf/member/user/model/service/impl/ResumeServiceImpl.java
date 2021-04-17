package com.bemyfriend.bmf.member.user.model.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.member.user.model.repository.ResumeRepository;
import com.bemyfriend.bmf.member.user.model.service.ResumeService;
import com.bemyfriend.bmf.member.user.model.vo.UserResume;


@Service
public class ResumeServiceImpl implements ResumeService {

	
	private final ResumeRepository resumeRepository;
	
	//생성자 주입
	public ResumeServiceImpl(ResumeRepository resumeRepository) {
		this.resumeRepository = resumeRepository;
	}

	
	
	
	
	// 이력서 업로드 하기
	@Override
	public int uploadResume(Map<String, Object> resume) {
		
		return resumeRepository.uploadResume(resume);
	}
	
	
	
	
	// 이력서 전체  리스트 불러오기
	@Override
	public List<UserResume> selectResume(String userId) {
		
		return resumeRepository.selectResume(userId);
	}


	// 이력서 서비스 파트 불러오기
	@Override
	public List<String> selectService(int resIdx) {
	
		return null;
	}
	
	
	//이력서 전체 파트 불러오기(서비스 제외)
	@Override
	public UserResume viewResumeDetail(String userId, int resIdx) {
				
		return resumeRepository.viewResumeDetail(userId, resIdx);
	}

	
	
	








	
	
	
	
}
