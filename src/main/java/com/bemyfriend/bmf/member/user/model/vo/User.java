package com.bemyfriend.bmf.member.user.model.vo;

import java.sql.Date;

public class User {
	
	private String userId;
	private String userPw;
	private String userName;
	private String userAdd;
	private String twoadd; //2dept주소
	private String userTell;
	private String userMail;
	private Date userBirth;
	private Date userJoindate;
	private int userIsleave;
	
	
	
	public User() {
		
	}
	
	
	public User(String userId, String userPw, String userName, String userAdd, String userTell, String userMail,
			Date userBirth, Date userJoindate, int userIsleave) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userAdd = userAdd;
		this.userTell = userTell;
		this.userMail = userMail;
		this.userBirth = userBirth;
		this.userJoindate = userJoindate;
		this.userIsleave = userIsleave;
	}

	
	


	
	public String getUserId() {
		return userId;
	}




	public void setUserId(String userId) {
		this.userId = userId;
	}




	public String getUserPw() {
		return userPw;
	}




	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}




	public String getUserName() {
		return userName;
	}




	public void setUserName(String userName) {
		this.userName = userName;
	}




	public String getUserAdd() {
		return userAdd;
	}


	public void setUserAdd(String userAdd) {
		this.userAdd = userAdd;
	}

	
	
	public String getTwoadd() {
		return twoadd;
	}



	public void setTwoadd(String twoadd) {
		this.twoadd = twoadd;
	}


	public String getUserTell() {
		return userTell;
	}




	public void setUserTell(String userTell) {
		this.userTell = userTell;
	}




	public String getUserMail() {
		return userMail;
	}




	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}




	public Date getUserBirth() {
		return userBirth;
	}




	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}




	public Date getUserJoindate() {
		return userJoindate;
	}




	public void setUserJoindate(Date userJoindate) {
		this.userJoindate = userJoindate;
	}




	public int getUserIsleave() {
		return userIsleave;
	}




	public void setUserIsleave(int userIsleave) {
		this.userIsleave = userIsleave;
	}




	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", userAdd=" + userAdd
				+ ", userTell=" + userTell + ", userMail=" + userMail + ", userBirth=" + userBirth + ", userJoindate="
				+ userJoindate + ", userIsleave=" + userIsleave + "]";
	} 
	
	
	
	
	
	
	
	

}
