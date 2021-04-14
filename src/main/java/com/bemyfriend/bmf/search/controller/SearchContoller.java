package com.bemyfriend.bmf.search.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bemyfriend.bmf.member.company.model.vo.CompanyHire;
import com.bemyfriend.bmf.search.model.service.SearchService;

@Controller
@RequestMapping("search")
public class SearchContoller {

	private final SearchService searchService;
	
	public SearchContoller (SearchService searchService) {
		this.searchService = searchService;
	}
	
	
	@GetMapping("searchtitle")				//get으로 받은 값
	public List<CompanyHire> searchTitle (@RequestParam String searchText
											,HttpSession session){
		
		List<CompanyHire> searchResult = searchService.searchTitle(searchText);
		
		return searchResult;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
