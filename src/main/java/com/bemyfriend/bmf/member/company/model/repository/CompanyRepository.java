package com.bemyfriend.bmf.member.company.model.repository;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import com.bemyfriend.bmf.member.company.model.vo.Company;


@Mapper
public interface CompanyRepository {
	
	
	
	//회원가입시 해당 아이디있는지 여부 체크
	@Select("SELECT * FROM COM_USER WHERE COM_ID = #{comId}")
	Company selectMemberById(String comId);
	
	
	//로그인하기 - 탈퇴회원 거르기
	@Select("SELECT * FROM COM_USER WHERE COM_ID = #{comId} and COM_ISLEAVE = 0")
	Company memberAuthenticate(String comId);
	
	
	//아이디 찾기
	@Select("SELECT COM_ID FROM COM_USER WHERE COM_NAME = #{comName} AND COM_MAIL= #{comMail}")
	String selectComForFindId(@Param("comName")String comName, @Param("comMail")String comMail);
	
	//비밀번호 찾기
	@Select("SELECT * FROM COM_USER WHERE COM_ID = #{comId} AND COM_MAIL = #{comMail}")
	Company selectComForFindPw(@Param("comId")String comId, @Param("comMail")String comMail);
	
	
	//회원탈퇴하기
	@Update("UPDATE COM_USER SET COM_ISLEAVE = '1' WHERE COM_ID = #{comId}")
	int withdrawCompany(String comId);
	
	
	
	
	
	
	// CompanyMapper.xml 실행
	
	// 회원가입 완료
	int insertCompany(Company persistUser);
	
	// 회원정보 수정하기
	int updateComInfo(Company company);
	
}
