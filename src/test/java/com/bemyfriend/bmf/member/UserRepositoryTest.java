package com.bemyfriend.bmf.member;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.bemyfriend.bmf.member.user.model.repository.UserRepository;
import com.bemyfriend.bmf.member.user.model.vo.User;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})
public class UserRepositoryTest {
	
	
	@Autowired
	 UserRepository userRepository;
	
	
	
	
	@Test
	public void memberAuthenticate() {
		User user = new User();
		user.setUserId("test");
		user.setUserPw("123456789");
		User usermember = userRepository.memberAuthenticate(user);
		System.out.println(usermember);
	}
	
	
	@Test
	public void selectMemberById() {
		String userId = "test";
		User user = userRepository.selectMemberById(userId);
		System.out.println(user);
	}
	
	
	@Test
	public void withdrawUser() {
		String userId = "aldud1529";
		int result = userRepository.withdrawUser(userId);
		System.out.println(result);
	}
	

}
