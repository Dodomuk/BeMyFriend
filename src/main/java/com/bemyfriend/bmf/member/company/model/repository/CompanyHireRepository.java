package com.bemyfriend.bmf.member.company.model.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.member.company.model.vo.CompanyHire;

@Mapper
public interface CompanyHireRepository {
	
	
	
	// 채용공고 전체 리스트 불러오기
	@Select("SELECT * FROM COM_HIRE WHERE COM_ID = #{comId} ORDER BY JOB_NO DESC")
	List<CompanyHire> selectHire(@Param("comId")String comId);
	
	// 지원된 내역가져오기
	@Select("SELECT * FROM USER_APPLY WHERE COM_ID = #{comId}")
	List<Map<String, Object>> selectApplyList(@Param("comId")String comId);
	
	
	

}
