package com.bemyfriend.bmf.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class IndexController {

	@GetMapping("/index")
	public String index() {
		return "indexMain";
	}
	
	@GetMapping("/")
	public String main(){
		return "indexMain";
	}
	
	@GetMapping("/index2")
	public String index2(){
		return "index";
	}
	
	@GetMapping("/popup")
	public String popup(){
		return "util/popup/popup";
	}
}
