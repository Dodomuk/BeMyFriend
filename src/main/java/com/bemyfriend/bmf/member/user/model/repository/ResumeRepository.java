package com.bemyfriend.bmf.member.user.model.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.member.user.model.vo.UserResume;


@Mapper
public interface ResumeRepository {
	
	
	
	
	@Select("SELECT * FROM USER_RESUME WHERE USER_ID = #{userId}")
	List<UserResume> selectResume(@Param("userId")String userId); // 이력서 리스트 불러오기
	
	
	@Select("SELECT * FROM USER_SERVICE WHERE USER_ID = #{resIdx")
	List<String> selectService(@Param("resIdx")int resIdx); // 이력서 서비스 파트 불러오기
	

	@Select("SELECT * FROM USER_RESUME WHERE USER_ID = #{userId} and RES_IDX = #{resIdx}")
	UserResume viewResumeDetail(@Param("userId")String userId, @Param("resIdx")int resIdx); // 이력서 리스트 불러오기
	
	
	
	
	// ResumeMapper.xml 사용하기
	int uploadResume(Map<String, Object> resume); // 이력서 업로드하기
	
	
}
