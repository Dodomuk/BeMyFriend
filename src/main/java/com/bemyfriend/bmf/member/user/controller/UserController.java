package com.bemyfriend.bmf.member.user.controller;


import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bemyfriend.bmf.member.user.model.service.UserService;
import com.bemyfriend.bmf.member.user.model.service.impl.UserServiceImpl;
import com.bemyfriend.bmf.member.user.model.vo.User;


@Controller
@RequestMapping("member/user")
public class UserController {
	
	
	private final UserService userService;
	
	
	public UserController(UserService userService) {
		this.userService = userService; //의존성 주입
	}
	
	
	@GetMapping("join")
	public String join() { // 회원가입페이지 이동
		return "member/user/join";
	}
	
	
	
	
	
	@GetMapping("idcheck")
	@ResponseBody //메소드 반환값 응답바디에 담아주기
	public String idCheck(String userId) { //@RequestParam 생략 상태
		if(userService.selectMemberById(userId) != null) {
			return "fail";
		}
		return "available";
	}
	
	
	
	
	
	@PostMapping("mailauth")
	public String authenticateEmail(@ModelAttribute User persistInfo
									,Errors errors
									,HttpSession session
									,Model model) {
		
		// 에러유무 파악
		if(errors.hasErrors()) {
			return "member/user/join";
		}
		
		String authPath = UUID.randomUUID().toString(); //유니크한 아이디 생성하기
		session.setAttribute("authPath", authPath);
		session.setAttribute("persistInfo", persistInfo);
		
		userService.authenticateEmail(persistInfo, authPath);
		
		return null;
	}
	
	
	
	
	
	@GetMapping("joinimpl/{authPath}")
	public String joinImpl() {
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	@GetMapping("login")
	public String login(String userId, String userPw) {
		// 로그인화면으로 이동
		return "/member/user/login";
	}
	
	
	
	
	
	
	@PostMapping("loginimpl")
	@ResponseBody								  //session에 저장해야 함
	public String loginmpl(@RequestBody User user, HttpSession session) {
		// 로그인 완료되면 success/ fail 문자열 반환(=>ResponseBody에 찍힘)
		// ResponseBody에 찍힌 문자열은 .then((text) => {
		// 이 형태로 fatch를 이용해 꺼내게 되는 것
		
		User userMember = userService.memberAuthenticate(user);
		System.out.println(userMember);
		if(userMember == null) { // 없는 회원이라면
			return "fail";
	
		}
			session.setAttribute("userMember", userMember);
			return "success";
		}

	

	

}
