package com.bemyfriend.bmf.recruitment.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_review.vo.Review;
import com.bemyfriend.bmf.recruitment.model.vo.Recruitment;

@Mapper
public interface RecruMapper {

	public List<Recruitment> selectRecruList(Paging page); 
	
	public Recruitment viewRecruId(int jobNo);
	
	public Integer insertRecru(Recruitment recruitment);
	
	public boolean deleteRecru(int no);
	
	//public void updateRecru(Recruitment recruitment);
	
	//public void pageViewCount(int no);
	
	// 게시글 업로드
	
	  //더미데이터 집어넣으려고 임시로 만듦
	  @Insert("insert into com_hire(job_no,com_id,job_title,job_deadline,job_step,job_type,job_per_num,job_duty,job_location,job_career,job_edu,job_need,job_preper,job_welfare,job_salary,job_image)" 
	  + " values(sc_job_idx.nextval,#{comId},#{jobTitle},#{jobDeadline},#{jobStep},#{jobType},#{jobPerNum},#{jobDuty},#{jobLocation},#{jobCareer},#{jobEdu},#{jobNeed},#{jobPreper},#{jobWelfare},#{jobSalary},#{jobImage})") 
	  int insertRecruDummi(Recruitment recruitment);

	  @Select("select count(*) from com_hire")
	  int selectContentCnt();
	  
	  @Select("select * from com_hire")
	  Recruitment selectRecru();
	  
   
}
