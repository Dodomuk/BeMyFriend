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
	public int uploadResume(Map<String, String> resume) {
		
		return resumeRepository.uploadResume(resume);
	}
	
	
	

	// 이력서 업데이트 하기
	@Override
	public int updateResume(Map<String, String> resume, int resIdx) {
		String userId = resume.get("userId");
		return resumeRepository.updateResume(resume, resIdx , userId);
	}

	
	
	
	
	
	// 이력서 전체 리스트 불러오기
	@Override
	public List<UserResume> selectResume(String userId) {
		
		return resumeRepository.selectResume(userId);
	}


	
	
	//이력서 불러오기
	@Override
	public UserResume viewResumeDetail(String userId, int resIdx) {
				
		return resumeRepository.viewResumeDetail(userId, resIdx);
	}




	// 이력서 삭제하기
	@Override
	public int deleteResume(int resIdx) {
		
		return resumeRepository.deleteResume(resIdx);
	}





	@Override
	public int applyRecrument(String userId, int resIdx, int jobNo, String jobTitle, String resTitle, String comId) {
		
		// 이미 지원한 공고인지 확인 , 지원내역이 있을시 0 리턴
		if(resumeRepository.checkApply(userId, jobNo) > 0) {
			
			return 0;
		}else {
			// 지원한 내역이 없다면 1 리턴
			return resumeRepository.applyRecrument(resIdx, userId, jobNo, jobTitle, resTitle, comId);
		}
		
	}





	@Override
	public List<Map<String, Object>> selectApplyList(String userId) {
		
		return resumeRepository.selectApplyList(userId);
	}




	
	








	
	
	
	
}
