package com.bemyfriend.bmf.common.exception.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.bemyfriend.bmf.common.exception.CustomException;


//우리의 프로젝트 내에서 발생하는 예외를 맡아서 처리해주는 역할의 클래스

@Controller
//Advice : 공통관심사
//지정한 패키지 내의 모든 컨트롤러들의 공통 관심사를 처리하는 클래스
@ControllerAdvice(basePackages = {"com.bemyfriend.bmf"})
public class ExceptionController {
	
	Logger logger = LoggerFactory.getLogger(ExceptionController.class);
	
	
	//Controller에서 발생하는 모든 예외를 받아줄 수 있음
	@ExceptionHandler(CustomException.class)
	public String businessExceptionHandler(CustomException e, Model model) {
		model.addAttribute("alertMsg", e.error.errMsg());
		model.addAttribute("url", e.error.url());
		return "common/result";
	}
	
	//응답 상태코드 지정	-> 500번대 에러 상태를 지정하겠다는 뜻 
	@ResponseStatus(code = HttpStatus.INTERNAL_SERVER_ERROR)			
	@ExceptionHandler(DataAccessException.class)//원래는 우리가 DataAccessException을 만들었지만 스프링에서는 지원해준다.
	public String dataAccessExceptionHandler(DataAccessException e, Model model) {
		model.addAttribute("alertMsg", "데이터베이스 접근 중 예외가 발생하였습니다.");
		model.addAttribute("url", "/index");
		e.printStackTrace();
		return "common/result";
	}
}
