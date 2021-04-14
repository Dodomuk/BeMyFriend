package com.bemyfriend.bmf;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import javax.inject.Inject;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.bemyfriend.bmf.community.model_review.vo.Review;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class PagingTest {

	@Inject
	private WebApplicationContext webApp;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.webApp).build();
	}
	
	
	/*@Test
	 public void inputDummi() throws Exception{
		
			    mockMvc.perform(get("/community/inputDummi")).andDo(print())
				.andExpect(status().isOk());	 

	 }*/
	
	@Test
	public void pagingDefault() throws Exception{
		mockMvc.perform(get("/community/review/review")).andDo(print())
		.andExpect(status().isOk());
	}
	

	
}
