package com.bemyfriend.bmf.member.company.validator;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.bemyfriend.bmf.member.company.model.repository.CompanyRepository;
import com.bemyfriend.bmf.member.company.model.vo.Company;



@Component
public class ComUserValidator implements Validator{
	
	private final  CompanyRepository companyRepository;
	
	public ComUserValidator(CompanyRepository companyRepository) {
		this.companyRepository = companyRepository;
	}
	
	
	//어떤 조건의 컨트롤러 메서드 파라미터를 검증할 것인지 작성
	@Override
	public boolean supports(Class<?> clazz) {
		
		//Class<?> clazz : 컨트롤러 파라미터의 class 객체 
		return 	Company.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		//Object target : 컨트롤러 메서드의 파라미터
		//Errors : 검증에 실패할 경우, 내용을 저장할 Error 객체, 컨트롤러 메서드의 파라미터로 전달된다.
		Pattern pattern = Pattern.compile("^(?!.*[ㄱ-힣])(?=.*\\W)(?=.*\\d)(?=.*[a-zA-Z])(?=.{8,})");
		Company persistInfo = (Company) target;
		
		/*
		//1. 사용자가 넘긴 아이디가 존재하지 않는 아이디가 맞는지
		if(companyRepository.selectMemberById(persistInfo.getComId()) != null){
			errors.rejectValue("userId", "error.userId", "이미 존재하는 아이디 입니다.");
		}
		 */
		//2. password가 8자리 이상 숫자, 영문자, 특수기호가 각 하나씩 들어있는지
		if(!pattern.matcher(persistInfo.getComPw()).find()) {
			errors.rejectValue("password", "error.password", "비밀번호는 숫자,영문자,특수문자 조합의 8글자 이상인 문자열입니다.");
			
		}
		
		
		
		
	
	}
	
	

}
