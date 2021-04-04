package com.bemyfriend.bmf.member.company.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bemyfriend.bmf.member.company.model.service.CompanyService;
import com.bemyfriend.bmf.member.company.model.vo.Company;



@Controller
@RequestMapping("member/company")
public class CompanyController {

	private CompanyService companyService;
	
	public CompanyController(CompanyService companyService) {
		this.companyService = companyService;
	}
	
	@GetMapping("login")
	public String login(String comId, String comPw) {
		
		return "/member/company/login";
	}
	
	
	@PostMapping("loginImpl")
	@ResponseBody
	public String loginImpl(@RequestBody Company company, HttpSession session){
		
		Company companyInfo = companyService.memberAuthenticate(company);
		
		if(companyInfo == null) {
			return "fail";
		}
		
		session.setAttribute("companyInfo", companyInfo);

		return "success";
		
	}
	
}
