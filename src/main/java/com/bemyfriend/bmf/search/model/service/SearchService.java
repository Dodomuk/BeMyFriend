package com.bemyfriend.bmf.search.model.service;

import java.util.List;
import java.util.Map;

import com.bemyfriend.bmf.member.company.model.vo.CompanyHire;

public interface SearchService {
	
	
	
	// 전체 검색
	List <CompanyHire> searchTitle(String searchTitle);
	
	// searchType에 따른 검색
	List <CompanyHire> searcKeyword(String searchType, String keyword);
}
