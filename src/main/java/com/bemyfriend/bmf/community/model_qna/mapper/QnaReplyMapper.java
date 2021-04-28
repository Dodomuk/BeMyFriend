package com.bemyfriend.bmf.community.model_qna.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bemyfriend.bmf.community.model_qna.vo.QnaComment;

@Mapper
public interface QnaReplyMapper {

	public List<QnaComment> list(int qnaNo);
	
	public void create(QnaComment qc);
}
