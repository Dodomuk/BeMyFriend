package com.bemyfriend.bmf.member.company.model.service.impl;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.member.company.model.repository.CompanyRepository;
import com.bemyfriend.bmf.member.company.model.service.CompanyService;
import com.bemyfriend.bmf.member.company.model.vo.Company;

@Service
public class CompanyServiceImpl implements CompanyService{

	//thread safe를 위하여 final 처리		
	private final CompanyRepository companyRepository;
	
	//생성자로 의존성 주입
	public CompanyServiceImpl(CompanyRepository companyRepository) {
		this.companyRepository = companyRepository;
	}
	
	
	@Override
	public Company memberAuthenticate(Company company) {
		
		String comId = company.getComId();
		String comPw = company.getComPw();
		
		return companyRepository.memberAuthenticate(comId, comPw);
	}

}
