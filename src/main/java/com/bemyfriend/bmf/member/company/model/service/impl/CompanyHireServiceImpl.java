package com.bemyfriend.bmf.member.company.model.service.impl;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.member.company.model.repository.CompanyRepository;
import com.bemyfriend.bmf.member.company.model.service.CompanyHireService;


@Service
public class CompanyHireServiceImpl implements CompanyHireService{

	
	
	
	private final CompanyRepository comHireRepository;
	
	
	// 생성자 의존성 주입
	public CompanyHireServiceImpl(CompanyRepository comHireRepository) {
		this.comHireRepository = comHireRepository;
	}
	
	
}
