package com.bemyfriend.bmf.program.model.vo;

public class Program {
	private String programStartDate;
	private String programEndDate;
	private String programComName;
	
	public String getProgramStartDate() {
		return programStartDate;
	}
	public void setProgramStartDate(String programStartDate) {
		this.programStartDate = programStartDate;
	}
	public String getProgramEndDate() {
		return programEndDate;
	}
	public void setProgramEndDate(String programEndDate) {
		this.programEndDate = programEndDate;
	}
	public String getProgramComName() {
		return programComName;
	}
	public void setProgramComName(String programComName) {
		this.programComName = programComName;
	}
	
	@Override
	public String toString() {
		return "Program [programStartDate=" + programStartDate + ", programEndDate=" + programEndDate
				+ ", programComName=" + programComName + "]";
	}
	
	

}
