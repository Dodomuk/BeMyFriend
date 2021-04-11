package com.bemyfriend.bmf.search;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.bemyfriend.bmf.member.company.model.vo.CompanyHire;
import com.bemyfriend.bmf.search.model.repository.SearchRepository;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})
public class SearchRepositoryTest {
	
   @Autowired
   SearchRepository searchRepository;
	
	
	
   
   @Test
   public void searchTitle() {
	   String searchTitle = "이거슨";
	   List<CompanyHire> result = searchRepository.searchTitle(searchTitle);
	   System.out.println(result);
	   
   }
	
	
	
	
	
	
	

}
