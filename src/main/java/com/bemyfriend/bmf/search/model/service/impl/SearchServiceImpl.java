package com.bemyfriend.bmf.search.model.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.member.company.model.vo.CompanyHire;
import com.bemyfriend.bmf.search.model.repository.SearchRepository;
import com.bemyfriend.bmf.search.model.service.SearchService;



@Service
public class SearchServiceImpl implements SearchService {

	private final SearchRepository searchRepository;
	
	public SearchServiceImpl(SearchRepository searchRepository) {
		this.searchRepository = searchRepository;
	}
	
	
	@Override
	public List <CompanyHire> searchTitle(String searchTitle) {
		
		
		List<CompanyHire> searchResult = searchRepository.searchTitle(searchTitle);
		
		
		return searchResult;
	}

}
