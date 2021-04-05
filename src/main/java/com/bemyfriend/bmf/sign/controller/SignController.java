package com.bemyfriend.bmf.sign.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bemyfriend.bmf.sign.model.service.SignService;

@Controller
@RequestMapping("sign")
public class SignController {
	
	/*
	 * @Autowired private SignService signService;
	 */
	
	//수화 페이지 index로 이동
	@GetMapping("signIndex")
	public String signIndex() {
		return "sign/signIndex";
	}
	
}
