package com.bemyfriend.bmf.member.company.controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.bemyfriend.bmf.common.code.ConfigCode;
import com.bemyfriend.bmf.common.code.ErrorCode;
import com.bemyfriend.bmf.common.exception.ToAlertException;
import com.bemyfriend.bmf.common.random.RandomString;
import com.bemyfriend.bmf.member.company.model.service.CompanyService;
import com.bemyfriend.bmf.member.company.model.vo.Company;
import com.bemyfriend.bmf.member.company.model.vo.CompanySupport;
import com.bemyfriend.bmf.member.company.validator.ComUserValidator;



@Controller
@RequestMapping("member/company")
public class CompanyController {

	private final CompanyService companyService;
	private final ComUserValidator comUserValidator;
	
	public CompanyController(CompanyService companyService, ComUserValidator comUserValidator) {
		this.companyService = companyService;
		this.comUserValidator = comUserValidator;
	}
	
	
	@InitBinder(value="company")
	public void InitBinder(WebDataBinder webDataBinder) {
		webDataBinder.addValidators(comUserValidator);
	}
	
	
	
	
	
	//join.jsp로 이동
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
	public String authenticateEmail(@Valid Company persistUser
								,Errors errors
								,HttpSession session
								,Model model) {
		
		System.out.println(persistUser);
		
		if(errors.hasErrors()) {
			return "member/company/join";
		}
	
		
		String authPath = UUID.randomUUID().toString();
		System.out.println("mailauth : " +authPath);
		session.setAttribute("authPath", authPath);
		session.setAttribute("persistUser", persistUser);
		

		
		companyService.authenticateEmail(persistUser, authPath);
		model.addAttribute("alertMsg", "이메일이 발송되었습니다.");
		model.addAttribute("url", ConfigCode.DOMAIN+"/index");
		
		return "common/result";
		
	}
	
	
	//  전송된 메일이 확인되면 회원가입 진행완료
	@GetMapping("joinimpl/{authPath}")
	public String joinimpl(@PathVariable("authPath") String urlPath
							, HttpSession session
							, @SessionAttribute("authPath") String sessionPath
							, @SessionAttribute("persistUser") Company persistUser
							, Model model) {

		
		if(!urlPath.contentEquals(sessionPath)) {
			throw new ToAlertException(ErrorCode.AUTH02);
		}
		
		companyService.insertCompany(persistUser);
		session.removeAttribute("persistUser");
		
		model.addAttribute("alertMsg", "회원가입이 완료되었습니다.");
		model.addAttribute("url","/member/company/login");
		
		return "common/result";
	}
	
	
	
	// 회원정보 수정 페이지로 이동
	@GetMapping("findinfo")
	public String findInfo() {
		return "member/company/findinfo";
	}
	
	
	
	
	// 회원 아이디 찾기
	@GetMapping("findcomid")
	public String findComId(String comName,
							String comMail,
							Model model) {
		System.out.println("comName: " + comName + "comMail : " +  comMail);
		String comId = companyService.findComId(comName, comMail);
		System.out.println(comId);
		if(comId == null) {
			model.addAttribute("fail", "조회되는 회원이 없습니다.");
		}
		
		model.addAttribute("comId", comId);
		
		return "member/find_result";
	}
	
	
	
	
	// 회원 비밀번호 찾기
	@GetMapping("findcompw")
	public String findComPw(String comId
							, String comMail
							, Model model) {
		
		Company company = companyService.findComPw(comId, comMail);
		System.out.println("company : " + company);
		//유저가 있다면
		if(company != null) {
			// 새로운 비밀번호 생성
			String randomStr = new RandomString().randomStr(3);
			
			// 새로운 객체에 담아서
			Company updateCom = new Company();
			updateCom.setComId(comId);
			updateCom.setComPw(randomStr);
			
			
			System.out.println("updateCom : " + updateCom);
			//업데이트 문 돌리기(비밀번호 인코딩 됨)
			companyService.updateComInfo(updateCom);
			model.addAttribute("comPw", randomStr);
			
			return "member/find_result";
			
		}
		model.addAttribute("fail","조회되는 회원이 없습니다.");
		
		return "member/find_result";
		
	}
	
	
	
	
	
	
	
	// 로그인 화면 이동
	@GetMapping("login")
	public String login(String comId, String comPw) {
		
		return "/member/company/login";
	}
	
	
	
	
	// 로그인 기능
	@PostMapping("loginimpl")
	@ResponseBody
	public String loginImpl(@RequestBody Company company, HttpSession session){
		System.out.println(company);
		Company comMember = companyService.memberAuthenticate(company);
		//company 없을 경우
		if(comMember == null) {
			return "fail";
		}else {
			//company 있는 경우, support 있는지 확인해서 session에 저장
			CompanySupport comSupport = companyService.selectSupport(company.getComId());
			session.setAttribute("comSupport", comSupport);
			session.setAttribute("comMember", comMember);
			return "success";
		}
		
	}
	
	
	
	
	//로그아웃 기능
	@GetMapping("logout")
	public String logout(HttpSession session) {
		
		companyService.companyLogout(session);
		
		return "/index";
	}
	
	
	
	//마이페이지 이동
	@GetMapping("mypage")
	public String mypage() {
		
		return "member/company/mypage";
	}
	
	
	// 마이페이지 수정하기
	@PostMapping("updateinfo")
	public String UpdateComInfo(@ModelAttribute Company company
								, CompanySupport support
								, HttpSession session
								, Model model) {
		
		
		System.out.println("support : " + support);
		int result = companyService.updateComInfo(company);
		int supportRes = companyService.uploadSupport(support);
		System.out.println("supportRes : " + supportRes);
		
		
		if(result > 0) {
			
			
				// 서포트가 성공적으로 저장되면 관련정보 다시 세션에 저장
				System.out.println("support 등록 완료 !");
				CompanySupport comSupport = companyService.selectSupport(support.getComId());
				Company comMember = companyService.selectMemberById(company.getComId());
				session.setAttribute("comSupport", comSupport);
				session.setAttribute("comMember", comMember);
				
				model.addAttribute("alertMsg", "기업회원 정보 수정이 성공하였습니다.");
				model.addAttribute("url",ConfigCode.DOMAIN+"/member/company/mypage");
			return "common/result";

		}else {
			model.addAttribute("alertMsg", "기업회원 정보 수정이 실패하였습니다.");
			model.addAttribute("url",ConfigCode.DOMAIN+"/member/company/mypage");
			return "common/result";
		}
	}
	
	
	
	//회원탈퇴하기
	@GetMapping("withdraw")
	@ResponseBody
	public String withdrawCompany(String comId, HttpSession session) {
		
		int result = companyService.withdrawCompany(comId);
		
		if(result > 0) {
			companyService.companyLogout(session);
			return "success";
			
		}
			return "fail";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
