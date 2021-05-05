package com.bemyfriend.bmf.community.model_qna.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.community.model_qna.mapper.QnaReplyMapper;
import com.bemyfriend.bmf.community.model_qna.service.QnaReplyService;
import com.bemyfriend.bmf.community.model_qna.vo.QnaComment;

@Service
public class QnaReplyServiceImpl implements QnaReplyService{

	@Inject
	QnaReplyMapper mapper;

	@Override
	public List<QnaComment> list(int no) {
		// TODO Auto-generated method stub
		return mapper.list(no);
	}

	@Override
	public void create(QnaComment qc) {
		// TODO Auto-generated method stub
		 mapper.create(qc);
	}

	
}
