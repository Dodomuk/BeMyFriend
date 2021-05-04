package com.bemyfriend.bmf.community.model_qna.service;

import java.util.Map;

import com.bemyfriend.bmf.community.model_qna.vo.Qna;

public interface QnaService {

	public Map<String, Object> selectQnaList(int currentPage); 
	
	public Qna viewQnaId(int qnaNo);
	
	public Integer insertQna(Qna qna);
	
	public boolean deleteQna(int no);
	
	public void updateQna(Qna qna);
	
	public void viewCount(int no);
	
	public Map<String, Object> qnaTopList(Qna qna);
}
