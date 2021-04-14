package com.bemyfriend.bmf.member.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member/user/resume")
public class ResumeController {
	
	
	@GetMapping("list")
	public String ListResume() {
		
		return "member/user/listresume";
	}
	
	
	
	@GetMapping("create")
	public String createResume() {
		
		return "member/user/createresume";
	}
	
	

}
