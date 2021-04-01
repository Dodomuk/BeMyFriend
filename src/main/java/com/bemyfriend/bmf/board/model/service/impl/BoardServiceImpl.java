package com.bemyfriend.bmf.board.model.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.board.model.mapper.BoardMapper;
import com.bemyfriend.bmf.board.model.service.BoardService;
import com.bemyfriend.bmf.board.model.vo.Board;
import com.bemyfriend.bmf.common.util.paging.Paging;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardMapper mapper;

	public List<Board> selectReviewList(Paging paging) {
		
		paging = Paging.builder()
				.currentPage(1)
				.blockCnt(5)
				.cntPerPage(20)
				.type("board")
				.total(mapper.selectContentCnt())
				.build();

		return mapper.selectReviewList(paging);
	}

	public int insertDummi(Board board) {
		return mapper.insertBoard(board);
	}

	public Integer insertReview(Board board) {
		System.out.println("보드서비스" + board);
		return mapper.insertReview(board);	
	}

}
