package com.bemyfriend.bmf.calendar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String calendarList(Model model) {
		model.addAllAttributes(calendarService.selectCalendarRecruit());
		return "calendar/recruit";
	}
	
	@GetMapping("index")
	public void index() {
		
	}
	
	@GetMapping("test")
	public void testCalendar() {
		
	}
	
	
}
