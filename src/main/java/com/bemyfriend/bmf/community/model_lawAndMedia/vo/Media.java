package com.bemyfriend.bmf.community.model_lawAndMedia.vo;

import java.util.Date;

public class Media {

	private int mediaNo;
	private String mediaTitle;
	private String mediaContent;
	private Date mediaDate;
	private String mediaImg;
	
	public Media() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Media(int mediaNo, String mediaTitle, String mediaContent, Date mediaDate, String mediaImg) {
		super();
		this.mediaNo = mediaNo;
		this.mediaTitle = mediaTitle;
		this.mediaContent = mediaContent;
		this.mediaDate = mediaDate;
		this.mediaImg = mediaImg;
	}

	public int getMediaNo() {
		return mediaNo;
	}

	public void setMediaNo(int mediaNo) {
		this.mediaNo = mediaNo;
	}

	public String getMediaTitle() {
		return mediaTitle;
	}

	public void setMediaTitle(String mediaTitle) {
		this.mediaTitle = mediaTitle;
	}

	public String getMediaContent() {
		return mediaContent;
	}

	public void setMediaContent(String mediaContent) {
		this.mediaContent = mediaContent;
	}

	public Date getMediaDate() {
		return mediaDate;
	}

	public void setMediaDate(Date mediaDate) {
		this.mediaDate = mediaDate;
	}

	public String getMediaImg() {
		return mediaImg;
	}

	public void setMediaImg(String mediaImg) {
		this.mediaImg = mediaImg;
	}

	@Override
	public String toString() {
		return "Media [mediaNo=" + mediaNo + ", mediaTitle=" + mediaTitle + ", mediaContent=" + mediaContent
				+ ", mediaDate=" + mediaDate + ", mediaImg=" + mediaImg + "]";
	}
	
}
