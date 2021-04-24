package com.bemyfriend.bmf.recruitment.model.service.impl;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bemyfriend.bmf.common.code.ErrorCode;
import com.bemyfriend.bmf.common.exception.ToAlertException;
import com.bemyfriend.bmf.common.util.file.FileUtil;
import com.bemyfriend.bmf.common.util.file.FileVo;
import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.recruitment.model.mapper.RecruMapper;
import com.bemyfriend.bmf.recruitment.model.service.RecruService;
import com.bemyfriend.bmf.recruitment.model.vo.Recruitment;

@Service
public class RecruServiceImpl implements RecruService {

	@Inject
	private RecruMapper mapper;
    
	@Override
	public Map<String, Object> selectRecruList(int currentPage) {

		Paging paging = Paging.builder()
				.currentPage(currentPage)
				.blockCnt(10)
				.cntPerPage(16)
				.type("review")
				.total(mapper.selectContentCnt())
				.build();

		Map<String, Object> commandMap = new HashMap<String, Object>();
		
		commandMap.put("paging", paging);
		commandMap.put("recruList", mapper.selectRecruList(paging));
		
		return commandMap;
	}
	
	@Override
	public Map<String,Object> viewRecruId(String view) {
		List<Map<String,FileVo>> files = mapper.selectFileWithBIdx(view);
		System.out.println("files : " + files); //이미지 파일 존재유무 확인
		Map<String,Object> commandMap = new HashMap<String,Object>();
		
		commandMap.put("recru", mapper.viewRecruId(view));
		for (int i = 1; i < files.size(); i++) {
			commandMap.put("files"+i,files.get(i).get("RENAME_FILE_NAME"));	
			commandMap.put("savepath"+i,files.get(i).get("SAVE_PATH"));	
			
			if(i>4) {    //사진 4개까지만 허용
				break; 
			}
		}
		System.out.println("commandMap : " + commandMap);
		return commandMap;
	}
	
	@Override
	public boolean deleteRecru(int no) {
		System.out.println("게시물 삭제");
		return mapper.deleteRecru(no);
	}
	
	@Override
	public void updateRecru(Recruitment recruitment,List<MultipartFile> files) {
		
		FileUtil fileUtil = new FileUtil();
		
		mapper.updateRecru(recruitment);
		try {
			   List<FileVo> fileList = fileUtil.filesUpload(files);
			   
			   mapper.deleteRecruFile(recruitment.getTypeIdx());
			   
			   for(FileVo fileVo : fileList) {
				   fileVo.setTypeIdx(recruitment.getTypeIdx());
				  
				   mapper.insertRecruFile(fileVo);
			   }
			
		}catch(Exception e) {
			throw new ToAlertException(ErrorCode.IB01, e);
		}
	}
	
	@Override
	public void insertRecru(Recruitment recruitment, List<MultipartFile> files) {
		
		FileUtil fileUtil = new FileUtil();
		
		mapper.insertRecru(recruitment);
		try {
			   List<FileVo> fileList = fileUtil.filesUpload(files);
				
			   for(FileVo fileVo : fileList) {
				   fileVo.setTypeIdx(recruitment.getTypeIdx());
				   mapper.insertRecruFile(fileVo);
			   }
			
		}catch(Exception e) {
			throw new ToAlertException(ErrorCode.IB01, e);
		}
	}

	
}
