package com.bemyfriend.bmf.member;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})
public class UserControllerTest {
	
	
	@Autowired
	private WebApplicationContext context;
	
	//Mock 객체 선언
	private MockMvc mockMvc;
	
	
	@Before
	public void setup() { //WebApplicationContext로 mock객체 생성
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.context).build();
	
	}
	
	@Test
	public void joinTest() throws Exception {
		mockMvc.perform(get("/member/user/join"))
				.andDo(print()); //요청에 대한 결과 console로 받기 
		
	}
	
	
	@Test
	public void idCheckTest() throws Exception {
		mockMvc.perform(get("/member/user/idcheck").param("userId", "test"))
				.andDo(print());

	}
	
	@Test
	public void authenticateEmail() throws Exception {
		mockMvc.perform(post("/member/user/mailauth")
							.param("userId", "helloSpring")
							.param("password", "1*al201210380")
							.param("email", "qkraldud1529@gmail.com")
							.param("tell", "010-2456-0304")).andDo(print());
	}
	
	@Test
	public void login() throws Exception {
		mockMvc.perform(get("/member/user/login")
						.param("userId", "test")
						.param("userPw", "12345")).andDo(print());
	}
	
	
	@Test
	public void mypage() throws Exception {
		mockMvc.perform(get("/mypage")).andDo(print());
	}
	
	

	
	
	

}
