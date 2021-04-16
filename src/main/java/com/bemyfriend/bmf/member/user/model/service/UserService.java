package com.bemyfriend.bmf.member.user.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.bemyfriend.bmf.common.util.file.FileVo;
import com.bemyfriend.bmf.member.user.model.vo.User;

public interface UserService {
	
	//트랜잭션 관리를 위해, 스프링이 프록시객체를 만들 수 있도록 인터페이스 생성
	//실질적인 코드 구현은 ServiceImpl에서 진행
	

	
	User selectMemberById(String userId);
	
	void authenticateEmail(User persistUser, String authPath);

	int insertUser(User persistUser);

	User memberAuthenticate(User user);
	
	void userLogout(HttpSession session);
	
	int updateUserInfo(User user);
	
	void uploadFile(MultipartFile file, HttpSession session);

	FileVo selectUserFile(String userIdx);
	
	int withdrawUser(String userId);
	
	String findUserId(String userName, String userTell);
	
	User findUserPw(String userId, String userMail);


}
