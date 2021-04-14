package com.bemyfriend.bmf.calendar.model.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.calendar.model.repository.CalendarRepository;
import com.bemyfriend.bmf.calendar.model.service.CalendarService;



@Service
@Repository
public class CalendarServiceImpl implements CalendarService{
	
	private final CalendarRepository calendarRepository;
	
	public CalendarServiceImpl(CalendarRepository calendarRepository) {
		this.calendarRepository=calendarRepository;
	}
	
	
	@Override
	public Map<String,Object> selectCalendarRecruit() {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		commandMap.put("calendarList", calendarRepository.selectCalendarRecruit());
		
		return commandMap;
	}
	
	

	

}
