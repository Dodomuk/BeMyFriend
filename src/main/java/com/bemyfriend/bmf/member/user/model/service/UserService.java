package com.bemyfriend.bmf.member.user.model.service;

import com.bemyfriend.bmf.member.user.model.vo.User;

public interface UserService {
	
	//트랜잭션 관리를 위해, 스프링이 프록시객체를 만들 수 있도록 인터페이스 생성
	//실질적인 코드 구현은 ServiceImpl에서 진행
	
	
	User memberAuthenticate(String userId, String userPw);
	
	User selectMemberById(String userId);
	
	void authenticateEmail(User persistInfo, String authPath);
	
	

}
