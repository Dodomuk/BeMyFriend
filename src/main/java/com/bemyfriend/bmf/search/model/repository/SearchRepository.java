package com.bemyfriend.bmf.search.model.repository;

import java.util.List;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;


import com.bemyfriend.bmf.member.company.model.vo.CompanyHire;



@Mapper
public interface SearchRepository {
	
	
	
	
	@Select("SELECT * FROM COM_HIRE WHERE JOB_TITLE LIKE '%'||#{searchTitle}||'%' or COM_NAME LIKE '%'||#{searchTitle}||'%' or JOB_LOCATION LIKE '%'||#{searchTitle}||'%'")
	List<CompanyHire> searchTitle(String searchTitle);
	
	
	List<CompanyHire> searchKeyword(@Param("searchType")String searchType, @Param("keyword")String keyword);
	
}
