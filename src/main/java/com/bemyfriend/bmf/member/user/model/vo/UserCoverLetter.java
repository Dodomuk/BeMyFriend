package com.bemyfriend.bmf.member.user.model.vo;

public class UserCoverLetter {
	
	
	private String userId;
	private int letterIdx;
	private String titleFir;
	private String titleSec;
	private String titleThr;
	private String contentFir;
	private String contentSec;
	private String contentThird;
	
	
	
	public UserCoverLetter(String userId, int letterIdx, String titleFir, String titleSec, String titleThr,
			String contentFir, String contentSec, String contentThird) {
		super();
		this.userId = userId;
		this.letterIdx = letterIdx;
		this.titleFir = titleFir;
		this.titleSec = titleSec;
		this.titleThr = titleThr;
		this.contentFir = contentFir;
		this.contentSec = contentSec;
		this.contentThird = contentThird;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public int getLetterIdx() {
		return letterIdx;
	}



	public void setLetterIdx(int letterIdx) {
		this.letterIdx = letterIdx;
	}



	public String getTitleFir() {
		return titleFir;
	}



	public void setTitleFir(String titleFir) {
		this.titleFir = titleFir;
	}



	public String getTitleSec() {
		return titleSec;
	}



	public void setTitleSec(String titleSec) {
		this.titleSec = titleSec;
	}



	public String getTitleThr() {
		return titleThr;
	}



	public void setTitleThr(String titleThr) {
		this.titleThr = titleThr;
	}



	public String getContentFir() {
		return contentFir;
	}



	public void setContentFir(String contentFir) {
		this.contentFir = contentFir;
	}



	public String getContentSec() {
		return contentSec;
	}



	public void setContentSec(String contentSec) {
		this.contentSec = contentSec;
	}



	public String getContentThird() {
		return contentThird;
	}



	public void setContentThird(String contentThird) {
		this.contentThird = contentThird;
	}



	@Override
	public String toString() {
		return "UserCoverLetter [userId=" + userId + ", letterIdx=" + letterIdx + ", titleFir=" + titleFir
				+ ", titleSec=" + titleSec + ", titleThr=" + titleThr + ", contentFir=" + contentFir + ", contentSec="
				+ contentSec + ", contentThird=" + contentThird + "]";
	}

	
	
	
	
	
	
	
	
	
}
