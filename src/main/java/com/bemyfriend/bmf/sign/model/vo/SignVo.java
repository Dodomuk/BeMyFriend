package com.bemyfriend.bmf.sign.model.vo;

public class SignVo {

	
	private String imgSrc;
	private String title;
	private String origin_no;
	
	public SignVo() {
		super();
	}

	public String getImgSrc() {
		return imgSrc;
	}

	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOrigin_no() {
		return origin_no;
	}

	public void setOrigin_no(String origin_no) {
		this.origin_no = origin_no;
	}

	@Override
	public String toString() {
		return "SignVo [imgSrc=" + imgSrc + ", title=" + title + ", origin_no=" + origin_no + "]";
	}
	

}
