package com.bemyfriend.bmf.member.user.model.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.member.user.model.vo.UserResume;


@Mapper
public interface ResumeRepository {
	
	
	
	// 이력서 리스트 불러오기
	@Select("SELECT * FROM USER_RESUME WHERE USER_ID = #{userId} ORDER BY RES_IDX DESC")
	List<UserResume> selectResume(@Param("userId")String userId); // 이력서 리스트 불러오기
	
	// 이력서 서비스파트 불러오기
	@Select("SELECT * FROM USER_SERVICE WHERE USER_ID = #{resIdx}")
	List<String> selectService(@Param("resIdx")int resIdx); // 이력서 서비스 파트 불러오기
	
	// 이력서 정보 불러오기
	@Select("SELECT * FROM USER_RESUME WHERE USER_ID = #{userId} and RES_IDX = #{resIdx}")
	UserResume viewResumeDetail(@Param("userId")String userId, @Param("resIdx")int resIdx); // 이력서 리스트 불러오기
	
	// 이력서 삭제하기
	@Delete("DELETE FROM USER_RESUME WHERE RES_IDX = ${resIdx}")
	int deleteResume(@Param("resIdx") int resIdx);
	
	
	// ResumeMapper.xml 사용하기
	
	//이력서 업로드하기
	int uploadResume(Map<String, String> resume);
	
	//이력서 업데이트하기
	int updateResume(@Param("resume")Map<String, String> resume, @Param("resIdx")int resIdx, @Param("userId") String userId);
	
	
}
