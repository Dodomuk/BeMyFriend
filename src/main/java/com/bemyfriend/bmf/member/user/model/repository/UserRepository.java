package com.bemyfriend.bmf.member.user.model.repository;


import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.bemyfriend.bmf.member.user.model.vo.User;

@Mapper //Mapper로도 사용하겠다.
public interface UserRepository {
	
	
	//입력정보를 토대로 회원가입 진행하기
	

	
	//회원가입시 해당 아이디가 있는지 확인(idCheck)
	@Select("SELECT * FROM USERS WHERE USER_ID = #{userId}")
	User selectMemberById(String userId);
	
	
	//회원가입하기
	@Insert("INSERT INTO USERS(user_id, user_pw, user_name, user_add, user_tell, user_mail, user_birth)"
			+ "values(#{userId},#{userPw},#{userName},#{userAdd}, #{userTell}, #{userMail}, #{userBirth})")
	int insertUser(User persistUser);
	
	
	//로그인하기 - 탈퇴회원 거르기
	@Select("SELECT * FROM USERS WHERE USER_ID = #{userId} and USER_PW = #{userPw} and USER_ISLEAVE = 0")
	User memberAuthenticate(User user);
		
	
	//아이디 찾기
	@Select("SELECT user_id from USERS WHERE USER_NAME = #{userName} and user_mail = #{userMail}")
	User selectUserForFindId(String userName, String userMail);
	
	
	//비밀번호 찾기
	@Select("SELECT * FROM USERS WHERE USER_ID = #{user_id} and USER_TELL = #{userTell}")
	int selectUserForFindPw(String userId, String userTell);
	
	
	//회원탈퇴하기
	@Update("UPDATE USERS SET USER_ISLEAVE = '1' WHERE USER_ID = #{userId}")
	int withdrawUser(String userId);
	
	
	
	// UserMapper.xml 실행
	
	//회원정보수정하기 
	int updateUserInfo(User user);

	
	
	
	
	
	
	
	
}
