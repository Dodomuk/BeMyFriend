package com.bemyfriend.bmf.kmap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bemyfriend.bmf.kmap.model.service.KmapService;


@Controller
@RequestMapping("kmap")
public class KmapController {
	
	private final KmapService kmapService;
	
	public KmapController(KmapService kmapService) {
		this.kmapService = kmapService;
	}
	
	
	@GetMapping("facility")
	public void facilityList() {
	}
	
	@GetMapping("companyLocation")
	public String kmapList(Model model) {
		System.out.println("컨트롤러 : "+kmapService.selectCompanyLocation());
		
		model.addAllAttributes(kmapService.selectCompanyLocation());
		return "kmap/companyLocation";
		
	}
	
	@GetMapping("test")
	public void testCalendar() {
		
	}
	
	
}
