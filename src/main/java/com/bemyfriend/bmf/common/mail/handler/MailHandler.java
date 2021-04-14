package com.bemyfriend.bmf.common.mail.handler;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MailHandler {
	
	@PostMapping("mail")
	public String writerMail(@RequestParam Map<String, Object> data
							 ,@RequestHeader Map<String,Object> header
							 ,Model model) {
		
		
		// jsp에 뿌려줄 데이터를 모델에 담아주기
		// key와 value 형태로 값을 넣어주면 view단에서 attribute name으로 사용할 수 있음 
		// 모델 객체에 들어있는 속성명 그대로 request.setAttribute로 다시 넣어준다.
		// addAttribute로 일일이 넣을 수 있지만 String 맵은 한번에 넣어줄 수 있다.
		model.addAllAttributes(data);
		
		//view
		return "mail-temp/" + data.get("mail-template");
		
	}

}
