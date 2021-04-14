package com.bemyfriend.bmf.member.company.model.vo;

import java.sql.Date;

public class Company {
	
	
	private String comId;
	private String comPw;
	private String comAddress;
	private String comTell;
	private String comMail;
	private String comType;
	private String comManager;
	private Date comJoindate;
	private int comIsleave;

	
	
	
	public Company() {
		
	}




	public Company(String comId, String comPw, String comAddress, String comTell, String comMail, String comType,
			String comManager, Date comJoindate, int comIsleave) {
		super();
		this.comId = comId;
		this.comPw = comPw;
		this.comAddress = comAddress;
		this.comTell = comTell;
		this.comMail = comMail;
		this.comType = comType;
		this.comManager = comManager;
		this.comJoindate = comJoindate;
		this.comIsleave = comIsleave;
	}




	public String getComId() {
		return comId;
	}




	public void setComId(String comId) {
		this.comId = comId;
	}




	public String getComPw() {
		return comPw;
	}




	public void setComPw(String comPw) {
		this.comPw = comPw;
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




	public String getComMail() {
		return comMail;
	}




	public void setComMail(String comMail) {
		this.comMail = comMail;
	}




	public String getComType() {
		return comType;
	}




	public void setComType(String comType) {
		this.comType = comType;
	}




	public String getComManager() {
		return comManager;
	}




	public void setComManager(String comManager) {
		this.comManager = comManager;
	}




	public Date getComJoindate() {
		return comJoindate;
	}




	public void setComJoindate(Date comJoindate) {
		this.comJoindate = comJoindate;
	}




	public int getComIsleave() {
		return comIsleave;
	}




	public void setComIsleave(int comIsleave) {
		this.comIsleave = comIsleave;
	}




	@Override
	public String toString() {
		return "Company [comId=" + comId + ", comPw=" + comPw + ", comAddress=" + comAddress + ", comTell=" + comTell
				+ ", comMail=" + comMail + ", comType=" + comType + ", comManager=" + comManager + ", comJoindate="
				+ comJoindate + ", comIsleave=" + comIsleave + "]";
	}
	
	
	
	
}
