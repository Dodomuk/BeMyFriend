package com.bemyfriend.bmf.member.company.model.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.member.company.model.vo.Company;



@Mapper
public interface CompanyRepository {
	

	@Select("SELECT * FROM COM_USER WHERE COM_ID = ${comId}")
	Company selectMemberById(String comId);
	
	
	//로그인하기
	@Select("SELECT * FROM COM_USER WHERE COM_ID = #{comId} and COM_PW = ${comPw}")

	
	Company memberAuthenticate(String comId, String comPw);

}
