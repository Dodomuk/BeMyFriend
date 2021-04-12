package com.bemyfriend.bmf.map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("map")
public class MapController {
	
	
	@GetMapping("facility")
	public void calendarList() {
	}
	
	@GetMapping("program")
	public void programCalendar() {
		
	}
	
	@GetMapping("test")
	public void testCalendar() {
		
	}
	
	
}
