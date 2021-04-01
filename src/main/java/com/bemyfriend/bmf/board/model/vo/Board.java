package com.bemyfriend.bmf.board.model.vo;

import java.util.Date;

public class Board {

    private int reviewNo;
	private String userId;
	private String reviewTitle;
	private String reviewContent;
	private Date reviewDate;
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Board(int reviewNo, String userId, String reviewTitle, String reviewContent, Date reviewDate) {
		super();
		this.reviewNo = reviewNo;
		this.userId = userId;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	@Override
	public String toString() {
		return "Board [reviewNo=" + reviewNo + ", userId=" + userId + ", reviewTitle=" + reviewTitle
				+ ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + "]";
	}

	
	
}
