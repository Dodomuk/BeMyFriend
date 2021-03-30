package com.bemyfriend.bmf.member.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("member/user")
@Controller
public class UserController {
	
	
	@GetMapping("join")
	public String join() { // 회원가입페이지 이동
		
		return "member/user/join";
	}
	
	
	
	
	
	@GetMapping("idcheck")
	public String idCheck(String userId) {
		System.out.println("파라미터로 들어온값 : " + userId);
		return null;
	}
	
	
	
	
	
	@PostMapping("mailauth")
	public String authenticateEmail() {
		
		return null;
	}
	
	
	
	
	
	@GetMapping("joinimpl/{authPath}")
	public String joinImpl() {
		
		return null;
	}
	
	
	
	
	
	@GetMapping("login")
	public String login(String userId, String userPw) {
		
		System.out.println("파라미터로 들어온 아이디 : "+ userId);
		System.out.println("파라미터로 들어온 비밀번호 : "+ userPw);
		return "/member/user/login";
	}
	
	
	
	
	
	public String loginmpl() {
		return null;
	}
	
	
	
	
	
	public void logout() {
		
	}
	
	
	
	
	
	public void withdraw() {
		
	}
	
	
	
	
	
	public void findId() {
		
	}
	
	
	
	
	
	public void findPw() {
		
	}
	
	
	
	
	
	public void userProfie() {
		
	}
	
	
	
	
	
	public void userResume() {
		
	}
	
	
	
	
	
	public void userCoverLetter() {
		
	}
	
	
	
	
	
	public void modifyInfo() {
		
	}
	
	
	

}
