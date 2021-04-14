package com.bemyfriend.bmf.search.model.repository;

import java.util.List;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;


import com.bemyfriend.bmf.member.company.model.vo.CompanyHire;



@Mapper
public interface SearchRepository {
	
	
	
	
	@Select("SELECT * FROM COM_HIRE WHERE JOB_TITLE LIKE '%'||#{seachTitle}||'%' or COM_ID LIKE '%'||#{seachTitle}||'%'")
	List<CompanyHire> searchTitle(String searchTitle);

}
