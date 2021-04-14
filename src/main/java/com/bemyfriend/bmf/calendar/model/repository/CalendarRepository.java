package com.bemyfriend.bmf.calendar.model.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.bemyfriend.bmf.calendar.model.vo.Calendar;


@Mapper
public interface CalendarRepository {
	
	List<Calendar> selectCalendarRecruit();

}
