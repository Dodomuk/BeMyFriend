package com.bemyfriend.bmf.common;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.bemyfriend.bmf.common.batch.CrawlingBatch;


@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})
public class CrawlingTest {
	
	@Autowired
	CrawlingBatch batch;
	
	@Test
	public void crawlingTest() {
		batch.crawlingCompanyName();
	}
	
	@Test
	public void crawlingOceanTest() {
		batch.crawlingOcean();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
