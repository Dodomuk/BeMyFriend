package com.bemyfriend.bmf.community;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

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
public class ReviewControllerTest {
	
	
	@Autowired
	private WebApplicationContext context;
	
	//Mock 객체 선언
	private MockMvc mockMvc;
	
	
	@Before
	public void setup() { //WebApplicationContext로 mock객체 생성
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.context).build();
	
	}
	
	/*@Test
	public void dummiTest() throws Exception {
		mockMvc.perform(get("/community/inputDummi"))
				.andDo(print()); //요청에 대한 결과 console로 받기 
		
	}*/

	/*@Test
	public void viewTest() throws Exception {
		mockMvc.perform(get("/community/review/reviewView").param("view", "100240"))
				.andDo(print()); //요청에 대한 결과 console로 받기 
		
	}*/

	/*@Test
	public void intTest() throws Exception{
		mockMvc.perform(get("/community/review/reviewFix").param("no", "100240"))
		.andDo(print()); //요청에 대한 결과 console로 받기 
	
	}*/
	
	/*@Test
	public void updateTest() throws Exception{
		mockMvc.perform(post("/community/review/updateForm")
				.param("userId", "siderid")
				.param("reviewTitle", "!!!!")
				.param("reviewContent", "컨첸츠")
				.param("reviewNo", "200240")).andDo(print())
		.andDo(print())
		.andExpect(redirectedUrl("/community/review/review")); //요청에 대한 결과 console로 받기 
	
	}*/
	
	@Test
	public void commentList() throws Exception{
		mockMvc.perform(get("/community/commentList").param("reviewNo", "100040"))
		.andDo(print());
	}
 
	@Test
	public void commentInsert() throws Exception{
		mockMvc.perform(get("/community/commentInsert")
				.param("replyUserId", "sisi")
				.param("reviewNo", "100040")
				)
		.andDo(print());
	}
}
