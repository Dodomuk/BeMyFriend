package com.bemyfriend.bmf.member.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bemyfriend.bmf.member.user.model.service.ResumeService;
import com.bemyfriend.bmf.member.user.model.vo.User;
import com.bemyfriend.bmf.member.user.model.vo.UserResume;

@Controller
@RequestMapping("member/user/resume")
public class ResumeController {
	
	
	private final ResumeService resumeService;
	
	
	public ResumeController(ResumeService resumeService) {
		this.resumeService = resumeService;
	}
	
	
	
	
	
	@GetMapping("list")
	public String ListResume(HttpSession session
							, Model model) {
		
		User user = (User)session.getAttribute("userMember");
		String userId = user.getUserId();
		
		List<UserResume> resumeList = resumeService.selectResume(userId);
		
		model.addAttribute("resumeList", resumeList);
		
		return "member/user/listresume";
	}
	
	
	
	@GetMapping("create")
	public String createResume() {
		
		return "member/user/createresume";
	}
	
	
	
	@PostMapping("upload")
	public String uploadResume(@RequestParam Map<String, Object> service
								, Model model) {
	
		System.out.println("service : " + service);
		
		// 인적사항 update 부분
		
		
		
		
		
		
		//int result = resumeService.uploadResume(service);
		/*
		if(result > 0) {
			
			model.addAttribute("alertMsg","이력서를 등록하였습니다.");
			model.addAttribute("url","/member/user/resume/list");
			
			return "common/result";
		}
		
			model.addAttribute("alertMsg","이력서 등록에 실패하였습니다.");
			model.addAttribute("url","/member/user/resume/list");
		*/
			return "common/result";
	}
	
	
	@GetMapping("detail")
	public String viewDetail(int resIdx
							, HttpSession session
							, Model model) {
		
		System.out.println(resIdx);
		User user = (User)session.getAttribute("userMember");
		String userId = user.getUserId();
		System.out.println(userId);
		
		
		List<String> service = resumeService.selectService(resIdx); //서비스 파트 가져오기
		UserResume userResume = resumeService.viewResumeDetail(userId, resIdx); //외 전체파트 가져오기
		
		
		
		model.addAttribute("service", service);
		model.addAttribute("userResume", userResume);
		
		
		
		return "/member/user/detailresume";
				
	}
	
	
	@PostMapping("update")
	public String updateResume() {
		return null;
	}

}
