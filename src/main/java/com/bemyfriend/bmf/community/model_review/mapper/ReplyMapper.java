package com.bemyfriend.bmf.community.model_review.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bemyfriend.bmf.community.model_review.vo.ReviewComment;

@Mapper
public interface ReplyMapper {

	public List<ReviewComment> list(int no);
	
	public void create(ReviewComment rc);
}
