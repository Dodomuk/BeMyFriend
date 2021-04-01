package com.bemyfriend.bmf.board.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.bemyfriend.bmf.board.model.vo.Board;
import com.bemyfriend.bmf.common.util.paging.Paging;

@Mapper
public interface BoardMapper {


	public List<Board> selectReviewList(Paging paging);
	
	public Object view(int review_no);
	
}
