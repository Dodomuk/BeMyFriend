package com.bemyfriend.bmf.program.model.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bemyfriend.bmf.program.model.vo.Program;



@Mapper
public interface ProgramRepository {
	
	List<Program> selectCalendarProgram();

}
