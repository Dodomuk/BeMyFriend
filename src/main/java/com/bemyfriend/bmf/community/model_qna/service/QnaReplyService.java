package com.bemyfriend.bmf.community.model_qna.service;

import java.util.List;

import com.bemyfriend.bmf.community.model_qna.vo.QnaComment;

public interface QnaReplyService {

	public List<QnaComment> list(int no);
	
	public void create(QnaComment qc);
	
}
