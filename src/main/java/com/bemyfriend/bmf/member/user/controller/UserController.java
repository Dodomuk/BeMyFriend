package com.bemyfriend.bmf.member.user.controller;


import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.bemyfriend.bmf.common.code.ConfigCode;
import com.bemyfriend.bmf.common.code.ErrorCode;
import com.bemyfriend.bmf.common.exception.ToAlertException;
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
	
	
	
	
	//join.jsp로 이동
	@GetMapping("join")
	public String join() { // 회원가입페이지 이동
		return "member/user/join";
	}
	
	
	
	
	
	//해당 id의 존재유무 확인
	@GetMapping("idcheck")
	@ResponseBody //메소드 반환값 응답바디에 담아주기
	public String idCheck(String userId) { //@RequestParam 생략 상태
		
		if(userService.selectMemberById(userId) != null) {
			return "fail"; 
		}
		return "available";
	}
	
	
	
	
	
	//회원가입 버튼 클릭시 mail 전송
	@PostMapping("mailauth")
	public String authenticateEmail(@ModelAttribute User persistUser
									,HttpSession session
									,Model model) {
		String authPath = UUID.randomUUID().toString(); //유니크한 아이디 생성
		session.setAttribute("authPath", authPath);
		session.setAttribute("persistUser", persistUser);
		
		userService.authenticateEmail(persistUser, authPath);
		model.addAttribute("alertMsg", "이메일이 발송되었습니다.");
		model.addAttribute("url",ConfigCode.DOMAIN+"/index");
		
		return "common/result";
		
		
	}
	
	
	
	
	
	//전송된 메일이 확인되면 회원가입 진행완료
	@GetMapping("joinimpl/{authPath}")
	public String joinImpl(@PathVariable("authPath") String urlPath
							,HttpSession session
							,@SessionAttribute("authPath") String sessionPath
							,@SessionAttribute("persistUser") User persistUser
							,Model model) {
		
		if(!urlPath.contentEquals(sessionPath)) {
			
			throw new ToAlertException(ErrorCode.AUTH02);
		}
		
		
		userService.insertUser(persistUser);
		session.removeAttribute("persistUser");
		
		model.addAttribute("alertMsg", "회원가입이 완료되었습니다.");
		model.addAttribute("url",ConfigCode.DOMAIN+"/index");
		return "common/result";
		
	}
	
	
	
	
	
	
	
	
	//로그인 페이지로 이동
	@GetMapping("login")
	public String login() {
	
		return "/member/user/login";
	}
	
	
	
	
	
	
	//로그인 정보기반 로그인 완료
	@PostMapping("loginimpl")
	@ResponseBody		//form-json으로 넘겼기때문에 ! //session에 저장해야 함
	public String loginmpl(@RequestBody User user, HttpSession session) {
		// 로그인 완료되면 success/ fail 문자열 반환(=>ResponseBody에 찍힘)
		// ResponseBody에 찍힌 문자열은 .then((text) => {
		// 이 형태로 fatch를 이용해 꺼내게 되는 것
		User userMember = userService.memberAuthenticate(user);
		
		if(userMember == null) { // 없는 회원이라면
			return "fail";
	
		}
			session.setAttribute("userMember", userMember);
			return "success";
		}
	
	
	
	
	//로그아웃하기
	@GetMapping("logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "/index";
	}
	
	
	
	
	
	//마이페이지 이동
	@GetMapping("mypage")
	public String mypage() {
		
		return "member/user/mypage";
	}
	
	
	
	
	//마이페이지 수정하기
	@PostMapping("updateinfo")
	public String updateUserInfo(@ModelAttribute User user, HttpSession session, Model model){
		
		System.out.println(user);
		
		int result =  userService.updateUserInfo(user);
		
		if(result > 0) {
			User userMember = userService.memberAuthenticate(user);
			session.setAttribute("userMember", userMember);
			

			model.addAttribute("alertMsg", "회원정보 수정이 성공하였습니다.");
			model.addAttribute("url",ConfigCode.DOMAIN+"/member/user/mypage");
			return "common/result";
			
		}else {
			

			model.addAttribute("alertMsg", "회원정보 수정이 실패하였습니다.");
			model.addAttribute("url",ConfigCode.DOMAIN+"member/user/mypage");
			return "common/result";
		}
		
		
	}

	
	
	

}
