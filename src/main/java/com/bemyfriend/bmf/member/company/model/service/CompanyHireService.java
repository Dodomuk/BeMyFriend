package com.bemyfriend.bmf.member.company.model.service;

import java.util.List;

import com.bemyfriend.bmf.member.company.model.vo.CompanyHire;

public interface CompanyHireService {
	
	
	List<CompanyHire> selectHire(String comId);
	
	

}
