package com.bemyfriend.bmf.member.company.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bemyfriend.bmf.member.company.model.service.CompanyHireService;
import com.bemyfriend.bmf.member.company.model.vo.Company;
import com.bemyfriend.bmf.member.company.model.vo.CompanyHire;


@Controller
@RequestMapping("member/company/hire")
public class CompayHireController {
	
	
	@Autowired
	private CompanyHireService comHireService;
	
	
	
	
	@GetMapping("list")
	public String viewHireList(HttpSession session
							  ,Model model) {
		
		Company company = (Company)session.getAttribute("comMember");
		String comId = company.getComId();
		
		List<CompanyHire> recruList = comHireService.selectHire(comId);
		List<Map<String, Object>> applyList = comHireService.selectApplyList(comId);
		

		model.addAttribute("recruList" , recruList);
		model.addAttribute("applyList", applyList);

		return "/member/company/listhire";
	}
	
	
	
	
	
	

	
	

}
