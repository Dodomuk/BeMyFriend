package com.bemyfriend.bmf.kmap.model.vo;

public class Kmap {
	
	private String comName;
	private String comAddress;
	private String comTell;
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getComAddress() {
		return comAddress;
	}
	public void setComAddress(String comAddress) {
		this.comAddress = comAddress;
	}
	public String getComTell() {
		return comTell;
	}
	public void setComTell(String comTell) {
		this.comTell = comTell;
	}
	@Override
	public String toString() {
		return "Kmap [comName=" + comName + ", comAddress=" + comAddress + ", comTell=" + comTell + "]";
	}
	
	
	
	
	
	

}
