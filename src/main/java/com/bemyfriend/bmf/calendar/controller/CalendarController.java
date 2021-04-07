package com.bemyfriend.bmf.calendar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bemyfriend.bmf.calendar.model.service.CalendarService;


@Controller
@RequestMapping("calendar")
public class CalendarController {
	
private final CalendarService calendarService;
	
	public CalendarController(CalendarService CalendarService) {
		this.calendarService = CalendarService;
	}
	
	@GetMapping("recruit")
	public void recruitCalendar(Model model) {
		model.addAllAttributes(calendarService.selectCalendarRecruit());
	}
	
	@GetMapping("program")
	public void programCalendar() {
		
	}
	
	@GetMapping("test")
	public void testCalendar() {
		
	}
	
	
}
