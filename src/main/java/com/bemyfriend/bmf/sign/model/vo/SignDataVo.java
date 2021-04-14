package com.bemyfriend.bmf.sign.model.vo;

public class SignDataVo {

	private String videoUrl;
	private String imageUrl;
	private String Explain;
	
	public SignDataVo() {
		super();
	}

	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getExplain() {
		return Explain;
	}

	public void setExplain(String explain) {
		Explain = explain;
	}

	@Override
	public String toString() {
		return "SignDataVo [videoUrl=" + videoUrl + ", imageUrl=" + imageUrl + ", Explain=" + Explain + "]";
	}
	
	
}
