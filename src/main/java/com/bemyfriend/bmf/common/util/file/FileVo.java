package com.bemyfriend.bmf.common.util.file;

import java.sql.Date;

import com.bemyfriend.bmf.common.code.ConfigCode;


public class FileVo {
	private int fileNo;
	private String typeIdx;
	private String originFileName;
	private String renameFileName;
	private String savePath;
	private String fullPath;
	private Date regDate;
	private int isDel;
	
	public int getfileNo() {
		return fileNo;
	}
	
	public void fileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	
	public String getTypeIdx() {
		return typeIdx;
	}
	
	public void setTypeIdx(String typeIdx) {
		this.typeIdx = typeIdx;
	}
	
	public String getOriginFileName() {
		return originFileName;
	}
	
	public void setOriginFileName(String originFileName) {
		this.originFileName = originFileName;
	}
	
	public String getRenameFileName() {
		return renameFileName;
	}
	
	public void setRenameFileName(String renameFileName) {
		this.renameFileName = renameFileName;
	}
	
	public String getSavePath() {
		return savePath;
	}
	
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	
	public String getFullPath() {
		return ConfigCode.UPLOAD_PATH + savePath; //미리 경로까지 설정해서 return
	}

	public Date getRegDate() {
		return regDate;
	}
	
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	public int getIsDel() {
		return isDel;
	}
	
	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}
	
	@Override
	public String toString() {
		return "FileVO [fileNo=" + fileNo + ", typeIdx=" + typeIdx + ", originFileName=" + originFileName
				+ ", renameFileName=" + renameFileName + ", savePath=" + savePath + ", regDate=" + regDate + ", isDel="
				+ isDel + "]";
	}
	

	
	
}
