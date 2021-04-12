package com.bemyfriend.bmf.recruitment.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bemyfriend.bmf.recruitment.model.service.impl.RecruServiceImpl;
import com.bemyfriend.bmf.recruitment.model.vo.Recruitment;

@Controller
@RequestMapping("recruitment")
public class RecruController {

	@Autowired
	private RecruServiceImpl recruService;
	
	// 게시판 메인
	@GetMapping("recruitment")
	public String list(
			@RequestParam(defaultValue = "1")int page, Model model, @ModelAttribute("recruInfo") Recruitment recruitment) {

		Date today = new Date();	
		SimpleDateFormat sdfm = new SimpleDateFormat("yyyy.MM.dd");
		String now = sdfm.format(today);
		
		System.out.println(now);
		System.out.println("여기서부터 채용정보 게시판 시작");
		
			System.out.println(recruService.selectRecruList(page));
			model.addAllAttributes(recruService.selectRecruList(page));
			model.addAttribute("page",page);
			return "recruitment/recruitment";
		}
	
	// 게시글 작성 
	
	/*@GetMapping("/recruitmentForm")
	public String listForm()
	{
		System.out.println("여기서부터 채용정보 게시판 글 작성 시작");
		return "recruitment/recruitmentForm";
	}
	
	@PostMapping("uploadForm")
	public String write(Recruitment recruitment)
	{
		System.out.println("다시 게시판으로 redirect");
		
		recruService.insertRecru(recruitment);
		return "redirect:/recruitment/recruitment";
	}
	*/
	
	//게시글 보기
	@GetMapping("/recruitmentView")
	public String view(Recruitment recruitment,Model model,@RequestParam("view")int view) 
	{
	    System.out.println("게시글 보기");
	    //recruService.pageViewCount(view); //추후에 조회수 기능 추가(몇명이 이 게시글을 확인했는지) 세션 중복 막음 
	    model.addAttribute("view", recruService.viewRecruId(view)); 
	    
	    return "/recruitment/recruitmentView"; 
	} 
	
	//게시글 삭제
	@GetMapping("delete")
	public String delete(int no) {
		recruService.deleteRecru(no);
		return "redirect:/recruitment/recruitment"; 
	}
	
	//게시글 수정 화면 이동
	@GetMapping("recruitmentFix")
	public String update(int no, Model model) {
		model.addAttribute("view", recruService.viewRecruId(no));
		return "recruitment/recruitmentFix";
	}
	
	
	//게시글 수정
	/*@PostMapping("updateForm")
	public String updateForm(Recruitment recruitment)
	{
		//recruService.updateRecru(recruitment);
		
		return "redirect:/recruitment/recruitment";
	} */  //추후 업데이트 기능 넣을때 개방
	
	//더미데이터 넣으려고 임시로 만들어둔 경로 (junit용)
	@GetMapping("insertRecruDummi")
	public String recruDummi(Model model,Recruitment recruitment){
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.mm.dd");
		
		Calendar time = Calendar.getInstance();
		time.add(Calendar.DATE, 14); //마감일자 +14일로 임시지정
		
		  for(int i=1; i<=5; i++) {
		    recruitment.setComId("threeYearJonBoa"+i);
		    recruitment.setJobTitle("3년차 개발자 프로젝트 투입 구합니다" +i);
		    recruitment.setJobDeadline(time.getTime());
		    recruitment.setJobStep("서류 검토 후 면접");
		    recruitment.setJobType("일용");
		    recruitment.setJobPerNum("0");
		    recruitment.setJobDuty("개발");
		    recruitment.setJobLocation("서울");
		    recruitment.setJobCareer("3년");
		    recruitment.setJobEdu("대졸");
		    recruitment.setJobNeed("대학교 졸업");
		    recruitment.setJobPreper("정보처리기사");
		    recruitment.setJobWelfare("없음");
		    recruitment.setJobSalary("면접 후 결정");
		    recruitment.setJobImage("none");
		    
		    recruService.insertRecruDummi(recruitment);
		  }
		
		return "insertRecruDummi";
	}
	
}

