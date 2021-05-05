package com.bemyfriend.bmf.common.batch;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CrawlingRepository {

	
	
	
	@Insert("insert into tb_baseball (rank, team_name, match, win, loose, tie, rate) "
			+ "values(#{rank},#{teamName},#{match},#{win},#{loose},#{tie},#{rate})")
	int insertBaseBall(Map<String, String> commandMap);
		

	@Insert("insert into calendar(cal_no, event_start_date, event_end_date, event_com_name)"
			+ "values(sc_cal_idx.nextval, to_char(sysdate,'YYYY-MM-DD'), #{event_end_date}, #{event_com_name})")
	int insertRecruit(Map<String,String> commandMap);

}
