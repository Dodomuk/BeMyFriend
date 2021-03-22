package com.bemyfriend.bmf.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("boardlist")
@Controller
public class BoardController {

	@GetMapping("employment")
	public String Employment(){
		return "boardlist/employment";
	}
	
	@GetMapping("lawInfo")
	public String lawInfo(){
		return "boardlist/lawInfo";
	}
	
	@GetMapping("mediaInfo")
	public String mediaInfo(){
		return "boardlist/mediaInfo";
	}

	@GetMapping("qna")
	public String qna(){
		return "boardlist/qna";
	}
	
}
