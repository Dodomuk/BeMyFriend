package com.bemyfriend.bmf.community.model_lawAndMedia.vo;

import java.util.Date;

public class Law {

	private int lawNo;
	private String lawTitle;
	private String lawContent;
	private Date lawDate;
	private String lawImg;
	
	public Law() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Law(int lawNo, String lawTitle, String lawContent, Date lawDate, String lawImg) {
		super();
		this.lawNo = lawNo;
		this.lawTitle = lawTitle;
		this.lawContent = lawContent;
		this.lawDate = lawDate;
		this.lawImg = lawImg;
	}

	public int getLawNo() {
		return lawNo;
	}

	public void setLawNo(int lawNo) {
		this.lawNo = lawNo;
	}

	public String getLawTitle() {
		return lawTitle;
	}

	public void setLawTitle(String lawTitle) {
		this.lawTitle = lawTitle;
	}

	public String getLawContent() {
		return lawContent;
	}

	public void setLawContent(String lawContent) {
		this.lawContent = lawContent;
	}

	public Date getLawDate() {
		return lawDate;
	}

	public void setLawDate(Date lawDate) {
		this.lawDate = lawDate;
	}

	public String getLawImg() {
		return lawImg;
	}

	public void setLawImg(String lawImg) {
		this.lawImg = lawImg;
	}

	@Override
	public String toString() {
		return "Law [lawNo=" + lawNo + ", lawTitle=" + lawTitle + ", lawContent=" + lawContent + ", lawDate=" + lawDate
				+ ", lawImg=" + lawImg + "]";
	}
	
	
	
}
