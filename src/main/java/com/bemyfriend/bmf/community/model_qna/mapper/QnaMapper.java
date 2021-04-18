package com.bemyfriend.bmf.community.model_qna.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_qna.vo.Qna;

@Mapper
public interface QnaMapper {

	public List<Qna> selectQnaList(Paging page); 
	
	public Qna viewId(int qnaNo);
	
	public Integer insertQna(Qna qna);
	
	public boolean deleteQna(int no);
	
	public void updateQna(Qna qna);
	
	public void viewCount(int no);
	
	  @Select("select count(*) from qna")
	  int selectContentCnt();
	  
	  @Select("select * from qna")
	  Qna selectQna();
	  
	
}
