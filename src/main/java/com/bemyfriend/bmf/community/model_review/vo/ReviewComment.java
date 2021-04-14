package com.bemyfriend.bmf.community.model_review.vo;

import java.util.Date;

public class ReviewComment {
	
	Review review = new Review();
	
	private int reviewCommentNo;
	private int reviewNo;
	private String replyUserId;
	private String reviewCommentContent;
	private Date reviewCommentDate;
	
	public ReviewComment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReviewComment(int reviewCommentNo, int reviewNo, String replyUserId, String reviewCommentContent,
			Date reviewCommentDate) {
		super();
		this.reviewCommentNo = reviewCommentNo;
		this.reviewNo = reviewNo;
		this.replyUserId = replyUserId;
		this.reviewCommentContent = reviewCommentContent;
		this.reviewCommentDate = reviewCommentDate;
	}

	public int getReviewCommentNo() {
		return reviewCommentNo;
	}

	public void setReviewCommentNo(int reviewCommentNo) {
		this.reviewCommentNo = reviewCommentNo;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
        this.reviewNo = review.getReviewNo();
	}

	public String getReplyUserId() {
		return replyUserId;
	}

	public void setReplyUserId(String replyUserId) {
		this.replyUserId = replyUserId;
	}

	public String getReviewCommentContent() {
		return reviewCommentContent;
	}

	public void setReviewCommentContent(String reviewCommentContent) {
		this.reviewCommentContent = reviewCommentContent;
	}

	public Date getReviewCommentDate() {
		return reviewCommentDate;
	}

	public void setReviewCommentDate(Date reviewCommentDate) {
		this.reviewCommentDate = reviewCommentDate;
	}
	
	
	
}
