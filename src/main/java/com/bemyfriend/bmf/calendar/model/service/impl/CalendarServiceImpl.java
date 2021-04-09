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
import com.bemyfriend.bmf.calendar.model.vo.Calendar;



@Service
@Repository
public class CalendarServiceImpl implements CalendarService{
	
	private final CalendarRepository calendarRepository;
	
	public CalendarServiceImpl(CalendarRepository calendarRepository) {
		this.calendarRepository=calendarRepository;
	}
	
	
	@Override
	public List<Calendar> selectCalendarRecruit() {
		// TODO Auto-generated method stub
		return calendarRepository.selectCalendarRecruit();
	}
	
	

	

}
