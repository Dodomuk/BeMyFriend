package com.bemyfriend.bmf.common.batch;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CrawlingRepository {
	@Insert("insert into calendar(event_start_date, event_end_date, event_com_name)"
			+ "values(CURRENT_TIMESTAMP, #{event_end_date}, #{event_com_name})")
	int insertRecruit(Map<String,String> commandMap);
}
