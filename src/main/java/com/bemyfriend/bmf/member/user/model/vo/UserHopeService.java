package com.bemyfriend.bmf.member.user.model.vo;

public class UserHopeService {
	
	private String userId;
	private int supLift;
	private int supElv;
	private int supBath;
	private int supVoice;
	private int supBlock;
	private int supSign;
	private int supPark;
	private int supCharge;
	private int supWelfare;

	public UserHopeService() {
		
	}

	public UserHopeService(String userId, int supLift, int supElv, int supBath, int supVoice, int supBlock, int supSign,
			int supPark, int supCharge, int supWelfare) {
		super();
		this.userId = userId;
		this.supLift = supLift;
		this.supElv = supElv;
		this.supBath = supBath;
		this.supVoice = supVoice;
		this.supBlock = supBlock;
		this.supSign = supSign;
		this.supPark = supPark;
		this.supCharge = supCharge;
		this.supWelfare = supWelfare;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getSupLift() {
		return supLift;
	}

	public void setSupLift(int supLift) {
		this.supLift = supLift;
	}

	public int getSupElv() {
		return supElv;
	}

	public void setSupElv(int supElv) {
		this.supElv = supElv;
	}

	public int getSupBath() {
		return supBath;
	}

	public void setSupBath(int supBath) {
		this.supBath = supBath;
	}

	public int getSupVoice() {
		return supVoice;
	}

	public void setSupVoice(int supVoice) {
		this.supVoice = supVoice;
	}

	public int getSupBlock() {
		return supBlock;
	}

	public void setSupBlock(int supBlock) {
		this.supBlock = supBlock;
	}

	public int getSupSign() {
		return supSign;
	}

	public void setSupSign(int supSign) {
		this.supSign = supSign;
	}

	public int getSupPark() {
		return supPark;
	}

	public void setSupPark(int supPark) {
		this.supPark = supPark;
	}

	public int getSupCharge() {
		return supCharge;
	}

	public void setSupCharge(int supCharge) {
		this.supCharge = supCharge;
	}

	public int getSupWelfare() {
		return supWelfare;
	}

	public void setSupWelfare(int supWelfare) {
		this.supWelfare = supWelfare;
	}

	@Override
	public String toString() {
		return "UserService [userId=" + userId + ", supLift=" + supLift + ", supElv=" + supElv + ", supBath=" + supBath
				+ ", supVoice=" + supVoice + ", supBlock=" + supBlock + ", supSign=" + supSign + ", supPark=" + supPark
				+ ", supCharge=" + supCharge + ", supWelfare=" + supWelfare + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
