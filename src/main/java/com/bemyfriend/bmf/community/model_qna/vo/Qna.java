package com.bemyfriend.bmf.community.model_qna.vo;

import java.util.Date;

public class Qna {

	private int qnaNo;
	private String userId;
	private String qnaTitle;
	private String qnaContent;
	private Date qnaDate;
	private int viewCnt;
	private int secret;
	public Qna() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Qna(int qnaNo, String userId, String qnaTitle, String qnaContent, Date qnaDate, int viewCnt, int secret) {
		super();
		this.qnaNo = qnaNo;
		this.userId = userId;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaDate = qnaDate;
		this.viewCnt = viewCnt;
		this.secret = secret;
	}
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public Date getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public int getSecret() {
		return secret;
	}
	public void setSecret(int secret) {
		this.secret = secret;
	}
	@Override
	public String toString() {
		return "Qna [qnaNo=" + qnaNo + ", userId=" + userId + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent
				+ ", qnaDate=" + qnaDate + ", viewCnt=" + viewCnt + ", secret=" + secret + "]";
	}
	
	
	
}
