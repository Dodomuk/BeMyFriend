package com.bemyfriend.bmf.member;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
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

import com.bemyfriend.bmf.member.company.model.repository.CompanyRepository;
import com.bemyfriend.bmf.member.company.model.vo.Company;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})
public class ComRepositoryTest {
	
	@Autowired
	CompanyRepository companyRepository;
	
	
	
	
	
	@Test
	public void insertCompany() {
		
		Company persistUser = new Company();
		persistUser.setComId("testCompany");
		persistUser.setComPw("12345");
		persistUser.setComName("test");
		persistUser.setComAddress("서울특별시 강남구");
		persistUser.setComMail("aaa@aaa");
		persistUser.setComTell("02111333");
		persistUser.setComType("big");
		persistUser.setComManager("홍길동");
		
		int result = companyRepository.insertCompany(persistUser);
		System.out.println("결과 : " + result);
		System.out.println(persistUser);
		
	}
	

}
