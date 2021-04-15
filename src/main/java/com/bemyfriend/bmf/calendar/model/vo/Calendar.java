package com.bemyfriend.bmf.calendar.model.vo;

import java.util.Date;

public class Calendar {
	private int calNo;
	private String eventStartDate;
	private String eventEndDate;
	private String eventComName;
	
	public int getCalNo() {
		return calNo;
	}
	public void setCalNo(int calNo) {
		this.calNo = calNo;
	}
	public String getEventStartDate() {
		return eventStartDate;
	}
	public void setEventStartDate(String eventStartDate) {
		this.eventStartDate = eventStartDate;
	}
	public String getEventEndDate() {
		return eventEndDate;
	}
	public void setEventEndDate(String eventEndDate) {
		this.eventEndDate = eventEndDate;
	}
	public String getEventComName() {
		return eventComName;
	}
	public void setEventComName(String eventComName) {
		this.eventComName = eventComName;
	}
	
	@Override
	public String toString() {
		return "Calendar [calNo=" + calNo + ", eventStartDate=" + eventStartDate + ", eventEndDate=" + eventEndDate
				+ ", eventComName=" + eventComName + "]";
	}
	
	
	
	
	
	
	

}
