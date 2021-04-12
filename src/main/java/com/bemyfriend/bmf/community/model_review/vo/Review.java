package com.bemyfriend.bmf.community.model_review.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Review {

    private int reviewNo;
	private String userId;
	private String reviewTitle;
	private String reviewContent;
	private Date reviewDate;
	private int viewCnt;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Review(int reviewNo, String userId, String reviewTitle, String reviewContent, Date reviewDate, int viewCnt) {
		super();
		this.reviewNo = reviewNo;
		this.userId = userId;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.viewCnt = viewCnt;
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
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", userId=" + userId + ", reviewTitle=" + reviewTitle
				+ ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", viewCnt=" + viewCnt + "]";
	}
	
}
