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
public class ComControllerTest {
	
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
		mockMvc.perform(get("/member/company/join"))
				.andDo(print()); //요청에 대한 결과 console로 받기 
		
	}
	
	
	@Test
	public void idCheckTest() throws Exception {
		mockMvc.perform(get("/member/company/idcheck").param("comId", "test"))
				.andDo(print());

	}
	
	@Test
	public void authenticateEmail() throws Exception {
		mockMvc.perform(post("/member/company/mailauth")
							.param("comId", "mailTest")
							.param("comPw", "1*al12345")
							.param("comName", "test_Company")
							.param("comAddress", "경기도 의정부시")
							.param("comTell", "010-2456-0304")
							.param("comMail", "qkraldud1529@gmail.com")
							.param("comType", "big")
							.param("comManager", "miyoung")).andDo(print());
	}

}
