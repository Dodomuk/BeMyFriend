package com.bemyfriend.bmf.recruitment.model.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Recruitment {

	private int jobNo;
	private String comName;
	private String jobTitle;
	private Date jobDeadline;
	private String jobStep;
	private String jobType;
	private String jobPerNum;
	private String jobDuty;
	private String jobLocation;
	private String jobCareer;
	private String jobEdu;
	private String jobNeed;
	private String jobPreper;
	private String jobWelfare;
	private String jobSalary;
	private Date jobDate;
	private int pageViewCnt;
	private String typeIdx;
	private String comId;
	
	public Recruitment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Recruitment(int jobNo, String comName, String jobTitle, Date jobDeadline, String jobStep, String jobType,
			String jobPerNum, String jobDuty, String jobLocation, String jobCareer, String jobEdu, String jobNeed,
			String jobPreper, String jobWelfare, String jobSalary, Date jobDate, int pageViewCnt, String typeIdx,
			String comId) {
		super();
		this.jobNo = jobNo;
		this.comName = comName;
		this.jobTitle = jobTitle;
		this.jobDeadline = jobDeadline;
		this.jobStep = jobStep;
		this.jobType = jobType;
		this.jobPerNum = jobPerNum;
		this.jobDuty = jobDuty;
		this.jobLocation = jobLocation;
		this.jobCareer = jobCareer;
		this.jobEdu = jobEdu;
		this.jobNeed = jobNeed;
		this.jobPreper = jobPreper;
		this.jobWelfare = jobWelfare;
		this.jobSalary = jobSalary;
		this.jobDate = jobDate;
		this.pageViewCnt = pageViewCnt;
		this.typeIdx = typeIdx;
		this.comId = comId;
	}

	public int getJobNo() {
		return jobNo;
	}

	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public Date getJobDeadline() {
		return jobDeadline;
	}

	public void setJobDeadline(Date jobDeadline) {
		this.jobDeadline = jobDeadline;
	}

	public String getJobStep() {
		return jobStep;
	}

	public void setJobStep(String jobStep) {
		this.jobStep = jobStep;
	}

	public String getJobType() {
		return jobType;
	}

	public void setJobType(String jobType) {
		this.jobType = jobType;
	}

	public String getJobPerNum() {
		return jobPerNum;
	}

	public void setJobPerNum(String jobPerNum) {
		this.jobPerNum = jobPerNum;
	}

	public String getJobDuty() {
		return jobDuty;
	}

	public void setJobDuty(String jobDuty) {
		this.jobDuty = jobDuty;
	}

	public String getJobLocation() {
		return jobLocation;
	}

	public void setJobLocation(String jobLocation) {
		this.jobLocation = jobLocation;
	}

	public String getJobCareer() {
		return jobCareer;
	}

	public void setJobCareer(String jobCareer) {
		this.jobCareer = jobCareer;
	}

	public String getJobEdu() {
		return jobEdu;
	}

	public void setJobEdu(String jobEdu) {
		this.jobEdu = jobEdu;
	}

	public String getJobNeed() {
		return jobNeed;
	}

	public void setJobNeed(String jobNeed) {
		this.jobNeed = jobNeed;
	}

	public String getJobPreper() {
		return jobPreper;
	}

	public void setJobPreper(String jobPreper) {
		this.jobPreper = jobPreper;
	}

	public String getJobWelfare() {
		return jobWelfare;
	}

	public void setJobWelfare(String jobWelfare) {
		this.jobWelfare = jobWelfare;
	}

	public String getJobSalary() {
		return jobSalary;
	}

	public void setJobSalary(String jobSalary) {
		this.jobSalary = jobSalary;
	}

	public Date getJobDate() {
		return jobDate;
	}

	public void setJobDate(Date jobDate) {
		this.jobDate = jobDate;
	}

	public int getPageViewCnt() {
		return pageViewCnt;
	}

	public void setPageViewCnt(int pageViewCnt) {
		this.pageViewCnt = pageViewCnt;
	}

	public String getTypeIdx() {
		return typeIdx;
	}

	public void setTypeIdx(String typeIdx) {
		this.typeIdx = typeIdx;
	}

	public String getComId() {
		return comId;
	}

	public void setComId(String comId) {
		this.comId = comId;
	}

	@Override
	public String toString() {
		return "Recruitment [jobNo=" + jobNo + ", comName=" + comName + ", jobTitle=" + jobTitle + ", jobDeadline="
				+ jobDeadline + ", jobStep=" + jobStep + ", jobType=" + jobType + ", jobPerNum=" + jobPerNum
				+ ", jobDuty=" + jobDuty + ", jobLocation=" + jobLocation + ", jobCareer=" + jobCareer + ", jobEdu="
				+ jobEdu + ", jobNeed=" + jobNeed + ", jobPreper=" + jobPreper + ", jobWelfare=" + jobWelfare
				+ ", jobSalary=" + jobSalary + ", jobDate=" + jobDate + ", pageViewCnt=" + pageViewCnt + ", typeIdx="
				+ typeIdx + ", comId=" + comId + "]";
	}



}
