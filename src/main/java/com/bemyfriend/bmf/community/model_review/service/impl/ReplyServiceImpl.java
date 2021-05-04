package com.bemyfriend.bmf.community.model_review.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.community.model_review.mapper.ReplyMapper;
import com.bemyfriend.bmf.community.model_review.service.ReplyService;
import com.bemyfriend.bmf.community.model_review.vo.ReviewComment;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Inject
	ReplyMapper mapper;

	@Override
	public List<ReviewComment> list(int no) {
		// TODO Auto-generated method stub
		return mapper.list(no);
	}

	@Override
	public void create(ReviewComment rc) {
		// TODO Auto-generated method stub
		 mapper.create(rc);
	}

	
}
