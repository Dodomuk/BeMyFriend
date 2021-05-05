package com.bemyfriend.bmf.calendar;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.bemyfriend.bmf.calendar.model.repository.CalendarRepository;
import com.bemyfriend.bmf.calendar.model.vo.Calendar;



@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})
public class CalendarRepositoryTest {
	
		@Autowired
		CalendarRepository calendarRepository;
		
		@Test
		public void calendarList() {
			List<Calendar> list = calendarRepository.selectCalendarRecruit();
			System.out.println(calendarRepository.selectCalendarRecruit());
			System.out.println(list.get(0).getEventEndDate());
		}
		
		

	}

	

