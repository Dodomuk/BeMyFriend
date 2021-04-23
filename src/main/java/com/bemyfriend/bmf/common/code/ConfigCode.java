package com.bemyfriend.bmf.common.code;

public enum ConfigCode {
	
	//런칭용
	//DOMAIN("https://www.bemyfriend.ga"),
	//개발용
	DOMAIN("http://localhost:9090"),
	EMAIL("bemyfriend486@gmail.com"),
	UPLOAD_PATH("/Users/miyoung/Desktop/final/CODE/bmf/resources/upload/"); //업로드패스 웹으로 잡아주기
	//UPLOAD_PATH("C:\\CODE\\git\\Be-My-Friend-\\resources\\upload\\"); // 동묵
    
	
	public String desc;
	
	ConfigCode(String desc){
		this.desc = desc;
	}
	
	
	public String toString() {
		return desc;
	}
}