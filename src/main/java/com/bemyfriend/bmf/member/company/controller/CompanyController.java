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
	
	
	
	@GetMapping("join")
	public String join() {
		return "/member/company/join";
	}
	
	

	//해당 id의 존재유무 파악
	@GetMapping("idcheck")
	@ResponseBody
	public String idCheck(String comId) {
		
		if(companyService.selectMemberById(comId) != null) {
			
			return "false";
		}
		return "available";
		
	}
	
	
	
	
	//회원가입 버튼 클릭시 mail 전송
	@PostMapping("mailauth")
	public String joinImpl() {
		
		
		return "/common/result";
		
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
	
	
	
	
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "/index";
	}
	
	
	
}
