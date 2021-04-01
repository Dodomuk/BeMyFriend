package com.bemyfriend.bmf.board.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.board.model.vo.Board;
import com.bemyfriend.bmf.common.util.paging.Paging;

@Mapper
public interface BoardMapper {

	public List<Board> selectReviewList(Paging paging);
	
	public Object view(int review_no);
	
	public Integer insertReview(Board board);
	// 게시글 업로드
	
	  //더미데이터 집어넣으려고 임시로 만듦
	  @Insert("insert into review(user_id,review_title,review_content)" 
	  + " values(#{userId},#{reviewTitle},#{reviewContent})") 
	  int insertBoard(Board board);

	  @Select("select count(*) from review")
	  int selectContentCnt();
   
}
