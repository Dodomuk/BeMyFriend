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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.bemyfriend.bmf.common.code.ConfigCode;
import com.bemyfriend.bmf.common.code.ErrorCode;
import com.bemyfriend.bmf.common.exception.ToAlertException;
import com.bemyfriend.bmf.common.random.RandomString;
import com.bemyfriend.bmf.common.util.file.FileVo;
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
	
	
	
	
	
	//join.jsp??? ??????
	@GetMapping("join")
	public String join() {
		return "/member/company/join";
	}
	
	

	//?????? id??? ???????????? ??????
	@GetMapping("idcheck")
	@ResponseBody
	public String idCheck(String comId) {
		
		if(companyService.selectMemberById(comId) != null) {
			
			return "false";
		}
		return "available";
		
	}
	
	
	
	
	//???????????? ?????? ????????? mail ??????
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
		model.addAttribute("alertMsg", "???????????? ?????????????????????.");
		model.addAttribute("url", ConfigCode.DOMAIN+"/index");
		
		return "common/result";
		
	}
	
	
	//  ????????? ????????? ???????????? ???????????? ????????????
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
		
		model.addAttribute("alertMsg", "??????????????? ?????????????????????.");
		model.addAttribute("url","/member/company/login");
		
		return "common/result";
	}
	
	
	
	// ???????????? ?????? ???????????? ??????
	@GetMapping("findinfo")
	public String findInfo() {
		return "member/company/findinfo";
	}
	
	
	
	
	// ?????? ????????? ??????
	@GetMapping("findcomid")
	public String findComId(String comName,
							String comMail,
							Model model) {
		System.out.println("comName: " + comName + "comMail : " +  comMail);
		String comId = companyService.findComId(comName, comMail);
		System.out.println(comId);
		if(comId == null) {
			model.addAttribute("fail", "???????????? ????????? ????????????.");
		}
		
		model.addAttribute("comId", comId);
		
		return "member/find_result";
	}
	
	
	
	
	// ?????? ???????????? ??????
	@GetMapping("findcompw")
	public String findComPw(String comId
							, String comMail
							, Model model) {
		
		Company company = companyService.findComPw(comId, comMail);
		System.out.println("company : " + company);
		//????????? ?????????
		if(company != null) {
			// ????????? ???????????? ??????
			String randomStr = new RandomString().randomStr(3);
			
			// ????????? ????????? ?????????
			Company updateCom = new Company();
			updateCom.setComId(comId);
			updateCom.setComPw(randomStr);
			
			
			System.out.println("updateCom : " + updateCom);
			//???????????? ??? ?????????(???????????? ????????? ???)
			companyService.updateComInfo(updateCom);
			model.addAttribute("comPw", randomStr);
			
			return "member/find_result";
			
		}
		model.addAttribute("fail","???????????? ????????? ????????????.");
		
		return "member/find_result";
		
	}
	
	
	
	
	
	
	
	// ????????? ?????? ??????
	@GetMapping("login")
	public String login(String comId, String comPw) {
		
		return "/member/company/login";
	}
	
	
	
	
	// ????????? ??????
	@PostMapping("loginimpl")
	@ResponseBody
	public String loginImpl(@RequestBody Company company, HttpSession session){
		System.out.println(company);
		Company comMember = companyService.memberAuthenticate(company);
		//company ?????? ??????
		if(comMember == null) {
			return "fail";
		}else {
			//company ?????? ??????, support ????????? ???????????? session??? ??????
			CompanySupport comSupport = companyService.selectSupport(company.getComId());
			session.setAttribute("comSupport", comSupport);
			session.setAttribute("comMember", comMember);
			session.setAttribute("comMemberId", comMember.getComId());
			session.setAttribute("comMemberName", comMember.getComName());
			session.setAttribute("comMemberAddress", comMember.getComAddress());
			session.setAttribute("comIdx", comMember.getComIdx());	
			return "success";
		}
		
	}
	
	
	
	
	//???????????? ??????
	@GetMapping("logout")
	public String logout(HttpSession session) {
		
		companyService.companyLogout(session);
		
		return "redirect:/main";
	}
	
	
	
	//??????????????? ??????
	@GetMapping("mypage")
	public String mypage() {
		
		return "member/company/mypage";
	}
	
	
	// ??????????????? ????????????
	@PostMapping("updateinfo")
	public String UpdateComInfo(@ModelAttribute Company company
								, CompanySupport support
								, HttpSession session
								, Model model) {
		
		int result = companyService.updateComInfo(company);
		int supportRes = companyService.uploadSupport(support);
		
		
		if(result > 0) {
			
			
				// ???????????? ??????????????? ???????????? ???????????? ?????? ????????? ??????
				System.out.println("support ?????? ?????? !");
				CompanySupport comSupport = companyService.selectSupport(support.getComId());
				Company comMember = companyService.selectMemberById(company.getComId());
				session.setAttribute("comSupport", comSupport);
				session.setAttribute("comMember", comMember);
				
				model.addAttribute("alertMsg", "???????????? ?????? ????????? ?????????????????????.");
				model.addAttribute("url",ConfigCode.DOMAIN+"/member/company/mypage");
			return "common/result";
			
		}else {
			model.addAttribute("alertMsg", "???????????? ?????? ????????? ?????????????????????.");
			model.addAttribute("url",ConfigCode.DOMAIN+"/member/company/mypage");
			return "common/result";
		}
	}
	
	
	
	//??????????????????
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
	
	
	//???????????? ????????? ?????? ??? ??????
	@GetMapping("membership")
	public String updateMembership(@RequestParam String resultValue, @SessionAttribute("comIdx") String comIdx) {
		
		int result = companyService.updateComMembership(resultValue, comIdx);
		if(result > 0) {
			
			return "index";
		}
		
		return "fail";
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
