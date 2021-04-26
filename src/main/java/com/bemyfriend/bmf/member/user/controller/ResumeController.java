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
import com.bemyfriend.bmf.member.user.model.service.UserService;
import com.bemyfriend.bmf.member.user.model.vo.User;
import com.bemyfriend.bmf.member.user.model.vo.UserHopeService;
import com.bemyfriend.bmf.member.user.model.vo.UserResume;

@Controller
@RequestMapping("member/user/resume")
public class ResumeController {
	
	
	private final ResumeService resumeService;
	private final UserService userService;
	
	
	public ResumeController(ResumeService resumeService, UserService userService) {
		this.resumeService = resumeService;
		this.userService = userService;
	}
	
	
	
	
	// 이력서 리스트 가져오기
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
	
	
	
	//이력서 업로드하기
	@PostMapping("upload")
	public String uploadResume(@RequestParam Map<String, String> resume
								,User user
								,UserHopeService serviceInfo
								, Model model
								, HttpSession session) {
	
		// 인적사항 update 부분
		int userRes = userService.updateUserInfo(user);
		int uploadResume = resumeService.uploadResume(resume);
		//service upload/update
		int serviceRes = userService.uploadUserService(serviceInfo);
		

		

		if(uploadResume > 0) {
			UserHopeService service = userService.selectUserService(user.getUserId()); //유저 서비스 가져오기
			model.addAttribute("alertMsg","이력서를 등록하였습니다.");
			model.addAttribute("url","/member/user/resume/list");
			session.setAttribute("service", service);
			
			return "common/result";
		}
		
			model.addAttribute("alertMsg","이력서 등록에 실패하였습니다.");
			model.addAttribute("url","/member/user/resume/list");
		
			return "common/result";
	}
	
	
	
	//이력서 디테일 보기
	@GetMapping("detail")
	public String viewDetail(int resIdx
							, HttpSession session
							, Model model) {
		
		System.out.println(resIdx);
		User user = (User)session.getAttribute("userMember");
		String userId = user.getUserId();
		
		
		UserResume userResume = resumeService.viewResumeDetail(userId, resIdx); //외 전체파트 가져오기
		userResume.setResIdx(resIdx);
	
		session.setAttribute("userResume", userResume);
		
		
		
		return "/member/user/detailresume";
				
	}
	
	
	//update 페이지로 이동
	@GetMapping("updateform")
	public String updateform() {
		
		
		return "/member/user/updateresume";
	}
	
	
	
	// 이력서 수정하기
	@PostMapping("updateimpl")
	public String updateResume(@RequestParam Map<String, String> resume
								,User user
								,UserHopeService serviceInfo
								, Model model
								, HttpSession session) {
		
		System.out.println(resume);
		
		
		UserResume originResume = (UserResume) session.getAttribute("userResume");
		int resIdx = originResume.getResIdx();
		System.out.println("user : " +user);
		// 인적사항 update
		int userRes = userService.updateUserInfo(user);
		
		// resume update
		int uploadResume = resumeService.updateResume(resume, resIdx);
		//service upload/update
		int serviceRes = userService.uploadUserService(serviceInfo);
		

				if(uploadResume > 0) {
					UserResume userResume = resumeService.viewResumeDetail(user.getUserId(), resIdx); //외 전체파트 가져오기
					User afterUser = userService.selectMemberById(user.getUserId()); // 유저정보 가져오기
					UserHopeService service = userService.selectUserService(user.getUserId()); //유저 서비스 가져오기
					session.setAttribute("userResume", userResume);
					session.setAttribute("userMember", afterUser);
					session.setAttribute("service", service);
					
					model.addAttribute("alertMsg","이력서를 수정하였습니다.");
					model.addAttribute("url","/member/user/resume/detail?resIdx="+resIdx);
					
					return "common/result";
				}
				
					model.addAttribute("alertMsg","이력서 수정에 실패하였습니다.");
					model.addAttribute("url","/member/user/detailresume");
				
					return "common/result";
	
	}
	
	
	
	// 이력서 삭제하기
	@GetMapping("delete")
	public String deleteResume(HttpSession session
							,Model model) {
		
		UserResume resume = (UserResume)session.getAttribute("userResume");
		int resIdx = resume.getResIdx();
		System.out.println("res_idx = " + resIdx);
		
		int result = resumeService.deleteResume(resIdx);
		
		if(result > 0 ) {
			model.addAttribute("alertMsg", "이력서가 삭제되었습니다.");
			model.addAttribute("url","/member/user/resume/list");
			return "common/result";
		}else {
			model.addAttribute("alertMsg", "이력서를 삭제하지 못했습니다.");
			model.addAttribute("url","/member/user/resume/list");
			return "common/result";
		}
	
	}
	
	@GetMapping("popup")
	public String popup(HttpSession session
						, Model model) {
		
		
		return "popup/selectresume";
	}

	
	
	
	
	

}
