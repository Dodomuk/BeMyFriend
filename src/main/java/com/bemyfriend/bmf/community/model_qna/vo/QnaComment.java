package com.bemyfriend.bmf.community.model_qna.vo;

import java.util.Date;

public class QnaComment {

	private int qnaCommentNo;
	private int qnaNo;
	private String replyUserId;
	private Date qnaCommentDate;
	private String qnaCommentContent;
	private String replyUserName;
	
	public QnaComment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QnaComment(int qnaCommentNo, int qnaNo, String replyUserId, Date qnaCommentDate, String qnaCommentContent, String replyUserName) {
		super();
		this.qnaCommentNo = qnaCommentNo;
		this.qnaNo = qnaNo;
		this.replyUserId = replyUserId;
		this.qnaCommentDate = qnaCommentDate;
		this.qnaCommentContent = qnaCommentContent;
		this.replyUserName = replyUserName;
	}

	public int getQnaCommentNo() {
		return qnaCommentNo;
	}

	public void setQnaCommentNo(int qnaCommentNo) {
		this.qnaCommentNo = qnaCommentNo;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getReplyUserId() {
		return replyUserId;
	}

	public void setReplyUserId(String replyUserId) {
		this.replyUserId = replyUserId;
	}

	public Date getQnaCommentDate() {
		return qnaCommentDate;
	}

	public void setQnaCommentDate(Date qnaCommentDate) {
		this.qnaCommentDate = qnaCommentDate;
	}

	public String getQnaCommentContent() {
		return qnaCommentContent;
	}

	public void setQnaCommentContent(String qnaCommentContent) {
		this.qnaCommentContent = qnaCommentContent;
	}

	public String getReplyUserName() {
		return replyUserName;
	}

	public void setReplyUserName(String replyUserName) {
		this.replyUserName = replyUserName;
	}

	@Override
	public String toString() {
		return "QnaComment [qnaCommentNo=" + qnaCommentNo + ", qnaNo=" + qnaNo + ", replyUserId=" + replyUserId + ", qnaCommentDate=" + qnaCommentDate
				+ ", qnaCommentContent=" + qnaCommentContent + ", replyUserName=" + replyUserName + "]";
	}
	
	
	
	
}
