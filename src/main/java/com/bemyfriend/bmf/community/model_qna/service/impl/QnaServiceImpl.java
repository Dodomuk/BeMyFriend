package com.bemyfriend.bmf.community.model_qna.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_qna.mapper.QnaMapper;
import com.bemyfriend.bmf.community.model_qna.service.QnaService;
import com.bemyfriend.bmf.community.model_qna.vo.Qna;

@Service
public class QnaServiceImpl implements QnaService{

	@Inject
	private QnaMapper mapper;
	
	@Override
	public Map<String, Object> selectQnaList(int currentPage) {
		
		Paging paging = Paging.builder()
				.currentPage(currentPage)
				.blockCnt(10)
				.cntPerPage(10)
				.type("review")
				.total(mapper.selectContentCnt())
				.build();
		
		Map<String, Object> commandMap = new HashMap<String,Object>();
		
		commandMap.put("paging", paging);
		commandMap.put("qnaList", mapper.selectQnaList(paging));
		
		return commandMap;
	}

	@Override
	public Qna viewQnaId(int qnaNo) {
		return mapper.viewQnaId(qnaNo);
	}

	@Override
	public Integer insertQna(Qna qna) {
		return mapper.insertQna(qna);
	}

	@Override
	public boolean deleteQna(int no) {
		return mapper.deleteQna(no);
	}

	@Override
	public void updateQna(Qna qna) {
		mapper.updateQna(qna);
	}

	@Override
	public void viewCount(int no) {
		mapper.viewCount(no);
	}

	@Override
	public Map<String, Object> qnaTopList(Qna qna) {
		
		Map<String, Object> commandMap = new HashMap<String,Object>();
		commandMap.put("qnaTopList",mapper.qnaTopList(qna));
		return commandMap;
	}

}
