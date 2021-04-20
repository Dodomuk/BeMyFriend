package com.bemyfriend.bmf.member.user.model.repository;


import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.bemyfriend.bmf.common.util.file.FileVo;
import com.bemyfriend.bmf.member.user.model.vo.User;
import com.bemyfriend.bmf.member.user.model.vo.UserHopeService;


@Mapper //Mapper로도 사용
public interface UserRepository {
	
	
	//회원가입시 해당 아이디가 있는지 확인(idCheck)
	@Select("SELECT * FROM USERS WHERE USER_ID = #{userId}")
	User selectMemberById(String userId);
	
	
	//회원가입하기
	@Insert("INSERT INTO USERS(user_id, user_idx, user_pw, user_name, user_add, user_tell, user_mail, user_birth)"
			+ "values(#{userId}, sc_user_idx.nextval, #{userPw},#{userName},#{userAdd}, #{userTell}, #{userMail}, #{userBirth})")
	int insertUser(User persistUser);
	
	
	//로그인하기 - 탈퇴회원 거르기
	@Select("SELECT * FROM USERS WHERE USER_ID = #{userId} and USER_ISLEAVE = 0")
	User memberAuthenticate(String userId);
		
	
	//아이디 찾기
	@Select("SELECT user_id from USERS WHERE USER_NAME = #{userName} and user_Tell = #{userTell}")
	String selectUserForFindId(@Param("userName")String userName, @Param("userTell")String userTell);
	
	
	//비밀번호 찾기(정보에 해당되는 유저가 있는지)
	@Select("SELECT * FROM USERS WHERE USER_ID = #{userId} and USER_MAIL = #{userMail}")
	User selectUserForFindPw(@Param("userId")String userId, @Param("userMail")String userMail);
	
	
	//회원서비스 가져오기
	@Select("SELECT * FROM USER_SERVICE WHERE USER_ID = #{userId}")
	UserHopeService selectUserService(@Param("userId")String userId);
	
	
	//회원탈퇴하기
	@Update("UPDATE USERS SET USER_ISLEAVE = '1' WHERE USER_ID = #{userId}")
	int withdrawUser(String userId);
	
	
	
	// UserMapper.xml 실행
	
	//회원정보수정하기 
	int updateUserInfo(User user);
	
	//회원서비스등록하기
	int uploadUserService(UserHopeService service);
	
	//회원서비스수정하기
	int updateUserService(UserHopeService service);
	
	//파일업로드하기
	void uploadFile(FileVo fileVo);
	
	//파일업데이트하기
	int updateFile(FileVo fileVo);
	
	//사진정보가져오기
	FileVo selectUserFile(String FindUserIdx);
	
	
	
	
	
	
	
	
}
