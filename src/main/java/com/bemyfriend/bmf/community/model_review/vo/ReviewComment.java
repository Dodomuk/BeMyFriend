package com.bemyfriend.bmf.community.model_review.vo;

import java.util.Date;

public class ReviewComment {
	
	private int reviewCommentNo; //댓글번호
	private int reviewNo;        //게시글번호
	private String replyUserId;  //작성자
	private String replyUserName; //작성자 닉네임
	private String reviewCommentContent; 
	private Date reviewCommentDate;
	
	public ReviewComment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReviewComment(int reviewCommentNo, int reviewNo, String replyUserId, String replyUserName,
			String reviewCommentContent, Date reviewCommentDate) {
		super();
		this.reviewCommentNo = reviewCommentNo;
		this.reviewNo = reviewNo;
		this.replyUserId = replyUserId;
		this.replyUserName = replyUserName;
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
		this.reviewNo = reviewNo;
	}
	public String getReplyUserId() {
		return replyUserId;
	}
	public void setReplyUserId(String replyUserId) {
		this.replyUserId = replyUserId;
	}
	public String getReplyUserName() {
		return replyUserName;
	}
	public void setReplyUserName(String replyUserName) {
		this.replyUserName = replyUserName;
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
	@Override
	public String toString() {
		return "ReviewComment [reviewCommentNo=" + reviewCommentNo + ", reviewNo=" + reviewNo + ", replyUserId="
				+ replyUserId + ", replyUserName=" + replyUserName + ", reviewCommentContent=" + reviewCommentContent
				+ ", reviewCommentDate=" + reviewCommentDate + "]";
	}
	
	
	
	
	
}
