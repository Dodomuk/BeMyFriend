package com.bemyfriend.bmf.member.company.model.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.member.company.model.vo.Company;



@Mapper
public interface CompanyRepository {
	
	
	
	
	//로그인하기
	@Select("SELECT * FROM USER WHERE USER_ID = #{userId} and USER_PW = ${userPw}")
	Company memberAuthenticate(String comId, String comPw);

}
