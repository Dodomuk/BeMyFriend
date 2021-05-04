package com.bemyfriend.bmf.sign.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bemyfriend.bmf.sign.model.service.impl.SignServiceImpl;
import com.bemyfriend.bmf.sign.model.vo.SignDataVo;
import com.bemyfriend.bmf.sign.model.vo.SignVo;


@Controller
@RequestMapping("sign")
public class SignController {

	private final SignServiceImpl signServiceImpl = new SignServiceImpl();
	
	//수화 페이지 index로 이동
	@GetMapping("signIndex")
	public String signIndex() {
		return "sign/signIndex";
	}
	

	@GetMapping("signSearch")
	public String signData(@RequestParam("searchKeyword") String searchKeyword, Model model) {
		List<SignVo> signDataList = signServiceImpl.getSignSearch(searchKeyword);
		model.addAttribute("signDataList", signDataList);
		return "sign/signIndex";
	}
	
	@GetMapping("selectSignData")
	public String selectSignData(@RequestParam("selectSignData") String origin_no, Model model) {
		List<SignDataVo> signResponseData = signServiceImpl.getSignSearchData(origin_no);
		model.addAttribute("signResponseData", signResponseData);
		return "sign/signIndex";
	}
	
	

}
