package com.bemyfriend.bmf.calendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.bemyfriend.bmf.calendar.model.repository.CalendarRepository;


@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})
public class CalendarRepositoryTest {
	
		@Autowired
		CalendarRepository calendarRepository;
		
		@Test
		public void selectCalendarRecruit() {
			calendarRepository.selectCalendarRecruit();
			System.out.println(calendarRepository.selectCalendarRecruit());
		}
		
		

	}

	

