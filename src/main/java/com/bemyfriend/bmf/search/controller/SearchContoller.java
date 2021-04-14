package com.bemyfriend.bmf.search.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
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
	public String searchTitle (@RequestParam String searchText
								,Model model){
		
		List<CompanyHire> searchList = searchService.searchTitle(searchText);
		System.out.println(searchList);
		
		if(searchList == null) {
			
			model.addAttribute("fail","결과값이 존재하지않습니다.");
			
			return "search/searchlist";
		}
		model.addAttribute("searchList",searchList);
		
		return "search/searchlist";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
