package com.bemyfriend.bmf.member.company.model.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.member.company.model.repository.CompanyHireRepository;
import com.bemyfriend.bmf.member.company.model.repository.CompanyRepository;
import com.bemyfriend.bmf.member.company.model.service.CompanyHireService;
import com.bemyfriend.bmf.member.company.model.vo.CompanyHire;


@Service
public class CompanyHireServiceImpl implements CompanyHireService{

	
	
	
	private final CompanyHireRepository comHireRepository;
	
	
	// 생성자 의존성 주입
	public CompanyHireServiceImpl(CompanyHireRepository comHireRepository) {
		this.comHireRepository = comHireRepository;
	}

	
	
	
	// 채용공고 전체 리스트 불러오기
	@Override
	public List<CompanyHire> selectHire(String comId) {
		
		return comHireRepository.selectHire(comId);
	}




	@Override
	public List<Map<String, Object>> selectApplyList(String comId) {
	
		
		return comHireRepository.selectApplyList(comId);
	}
	
	
}
