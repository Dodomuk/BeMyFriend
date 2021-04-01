package com.bemyfriend.bmf.common.mail.handler;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MailHandler {
	
	@PostMapping("mail")
	public String writerMail(@RequestParam Map<String, Object>data,
							 @RequestHeader Map<String, Object> header
							 ,Model model) {
		
		System.out.println(data);
		
		//jsp에 뿌려줄 데이터를 모델에 담아준다.
		model.addAllAttributes(data);
		
		//view
		return "mail-temp/" + data.get("mail-template");
		
	}

}
