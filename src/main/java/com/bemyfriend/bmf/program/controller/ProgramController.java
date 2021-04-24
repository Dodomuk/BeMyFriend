package com.bemyfriend.bmf.program.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bemyfriend.bmf.program.model.service.ProgramService;


@Controller
@RequestMapping("program")
public class ProgramController {
	
	private final ProgramService programService;
	
	public ProgramController(ProgramService programService) {
		this.programService = programService;
	}
	
	@GetMapping("calendar")
	public String programList(Model model) {
		model.addAllAttributes(programService.selectCalendarProgram());
		System.out.println("컨트롤러 : "+programService.selectCalendarProgram());
		return "program/calendar";
	}

}
