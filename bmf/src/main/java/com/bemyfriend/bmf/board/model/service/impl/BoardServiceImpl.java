package com.bemyfriend.bmf.board.model.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.board.model.mapper.BoardMapper;
import com.bemyfriend.bmf.board.model.service.BoardService;
import com.bemyfriend.bmf.board.model.vo.Board;
import com.bemyfriend.bmf.common.util.paging.Paging;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardMapper mapper;

	public List<Board> list(Paging paging){
		return mapper.selectReviewList(paging);
	}

	
	
}
