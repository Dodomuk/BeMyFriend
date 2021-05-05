package com.bemyfriend.bmf.community.model_review.service;

import java.util.List;

import com.bemyfriend.bmf.community.model_review.vo.ReviewComment;

public interface ReplyService {

	public List<ReviewComment> list(int no);
	
	public void create(ReviewComment rc);
	
}
