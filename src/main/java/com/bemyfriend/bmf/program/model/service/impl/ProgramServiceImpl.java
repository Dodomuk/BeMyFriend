package com.bemyfriend.bmf.program.model.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.program.model.repository.ProgramRepository;
import com.bemyfriend.bmf.program.model.service.ProgramService;


@Service
@Repository
public class ProgramServiceImpl implements ProgramService {
	
	private final ProgramRepository programRepository;
	
	public ProgramServiceImpl(ProgramRepository programRepository) {
		this.programRepository=programRepository;
	}

	@Override
	public Map<String, Object> selectCalendarProgram() {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		commandMap.put("programList", programRepository.selectCalendarProgram());
		System.out.println("ServiceImpl : "+programRepository.selectCalendarProgram() );
		
		return commandMap;


	}

}
