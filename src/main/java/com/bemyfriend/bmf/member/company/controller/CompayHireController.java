package com.bemyfriend.bmf.member.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bemyfriend.bmf.member.company.model.service.CompanyHireService;


@Controller
@RequestMapping("member/company/hire")
public class CompayHireController {
	
	
	@Autowired
	private CompanyHireService comHireService;
	
	
	
	@GetMapping("createhire")
	public String createHire() {
		
		return "/member/company/createhire";
	}
	

}
