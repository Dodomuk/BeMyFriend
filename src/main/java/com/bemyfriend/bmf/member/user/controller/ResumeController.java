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
	public String uploadResume(@RequestParam Map<String, String> resume
								,User user
								,UserHopeService service
								, Model model
								, HttpSession session) {
	
		// 인적사항 update 부분
		int userRes = userService.updateUserInfo(user);
		int uploadResume = resumeService.uploadResume(resume);
		

		// 세션에 저장된 service가 없을 경우 업로드로!
		if(session.getAttribute("service") == null) {
			int uploadService = userService.uploadUserService(service);
			if(uploadService > 0) {
				UserHopeService resService = userService.selectUserService(user.getUserId());
				session.setAttribute("service", resService);
				System.out.println("서비스 업로드 완료!");
			}else{
				System.out.println("서비스 업로드 실패!");
			}
			
		}else {
		//세션에 저장된 service가 있는 경우엔 업데이트로! 
			int updateService = userService.updateUserService(service);	
			if(updateService > 0) {
				UserHopeService resService = userService.selectUserService(user.getUserId());
				session.setAttribute("service", resService);
				System.out.println("서비스 업로드 완료!");
			}else{
				System.out.println("서비스 업로드 실패!");
			}
			
		}

		if(uploadResume > 0) {
			
			model.addAttribute("alertMsg","이력서를 등록하였습니다.");
			model.addAttribute("url","/member/user/resume/list");
			
			return "common/result";
		}
		
			model.addAttribute("alertMsg","이력서 등록에 실패하였습니다.");
			model.addAttribute("url","/member/user/resume/list");
		
			return "common/result";
	}
	
	
	@GetMapping("detail")
	public String viewDetail(int resIdx
							, HttpSession session
							, Model model) {
		
		System.out.println(resIdx);
		User user = (User)session.getAttribute("userMember");
		String userId = user.getUserId();
		
		
		List<String> service = resumeService.selectService(resIdx); //서비스 파트 가져오기
		UserResume userResume = resumeService.viewResumeDetail(userId, resIdx); //외 전체파트 가져오기
		userResume.setResIdx(resIdx);
	
		session.setAttribute("userResume", userResume);
		
		
		
		return "/member/user/detailresume";
				
	}
	
	
	//update 페이지로 이동
	@GetMapping("updateform")
	public String updateform() {
		
		
		return "/member/user/resumeupdate";
	}
	
	
	@PostMapping("updateimpl")
	public String updateResume(@RequestParam Map<String, String> resume
								,User user
								,UserHopeService service
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
		
		
		// 세션에 저장된 service가 없을 경우 업로드로!
				if(session.getAttribute("service") == null) {
					int uploadService = userService.uploadUserService(service);
					if(uploadService > 0) {
						UserHopeService resService = userService.selectUserService(user.getUserId());
						session.setAttribute("service", resService);
						System.out.println("서비스 업로드 완료!");
					}else{
						System.out.println("서비스 업로드 실패!");
					}
					
				}else {
				//세션에 저장된 service가 있는 경우엔 업데이트로! 
					int updateService = userService.updateUserService(service);	
					if(updateService > 0) {
						UserHopeService resService = userService.selectUserService(user.getUserId());
						session.setAttribute("service", resService);
						System.out.println("서비스 업로드 완료!");
					}else{
						System.out.println("서비스 업로드 실패!");
					}
					
				}

				if(uploadResume > 0) {
					UserResume userResume = resumeService.viewResumeDetail(user.getUserId(), resIdx); //외 전체파트 가져오기
					User afterUser = userService.selectMemberById(user.getUserId()); // 유저정보 가져오기
					session.setAttribute("userResume", userResume);
					session.setAttribute("userMember", afterUser);
					
					model.addAttribute("alertMsg","이력서를 수정하였습니다.");
					model.addAttribute("url","/member/user/resume/detail?resIdx="+resIdx);
					
					return "common/result";
				}
				
					model.addAttribute("alertMsg","이력서 수정에 실패하였습니다.");
					model.addAttribute("url","/member/user/detailresume");
				
					return "common/result";
	
	}
	
	
	
	
	@GetMapping("delete")
	public String deleteResume() {
		
		
		return null;
	}

}
