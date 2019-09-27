package com.kh.fp.journal.model.vo;

import java.sql.Date;

public class Journal implements java.io.Serializable{
	private int journalNo;
	private int userNo;
	private Date journalDate;
	private String topic;
	private String topicMin;
	private String time;
	private String activity;
	private String totalComment;
	private String remarks;
	private String status;
	private int kinderNo;
	private String userName;
	private int loginUserNo;
	private String className;
	private String kinderName;

	public Journal() {}

	public Journal(int journalNo, int userNo, Date journalDate, String topic, String topicMin, String time,
			String activity, String totalComment, String remarks, String status, int kinderNo, String userName,
			int loginUserNo, String className, String kinderName) {
		super();
		this.journalNo = journalNo;
		this.userNo = userNo;
		this.journalDate = journalDate;
		this.topic = topic;
		this.topicMin = topicMin;
		this.time = time;
		this.activity = activity;
		this.totalComment = totalComment;
		this.remarks = remarks;
		this.status = status;
		this.kinderNo = kinderNo;
		this.userName = userName;
		this.loginUserNo = loginUserNo;
		this.className = className;
		this.kinderName = kinderName;
	}

	public int getJournalNo() {
		return journalNo;
	}

	public void setJournalNo(int journalNo) {
		this.journalNo = journalNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public Date getJournalDate() {
		return journalDate;
	}

	public void setJournalDate(Date journalDate) {
		this.journalDate = journalDate;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getTopicMin() {
		return topicMin;
	}

	public void setTopicMin(String topicMin) {
		this.topicMin = topicMin;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}

	public String getTotalComment() {
		return totalComment;
	}

	public void setTotalComment(String totalComment) {
		this.totalComment = totalComment;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getKinderNo() {
		return kinderNo;
	}

	public void setKinderNo(int kinderNo) {
		this.kinderNo = kinderNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getLoginUserNo() {
		return loginUserNo;
	}

	public void setLoginUserNo(int loginUserNo) {
		this.loginUserNo = loginUserNo;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getKinderName() {
		return kinderName;
	}

	public void setKinderName(String kinderName) {
		this.kinderName = kinderName;
	}

	@Override
	public String toString() {
		return "Journal [journalNo=" + journalNo + ", userNo=" + userNo + ", journalDate=" + journalDate + ", topic="
				+ topic + ", topicMin=" + topicMin + ", time=" + time + ", activity=" + activity + ", totalComment="
				+ totalComment + ", remarks=" + remarks + ", status=" + status + ", kinderNo=" + kinderNo
				+ ", userName=" + userName + ", loginUserNo=" + loginUserNo + ", className=" + className
				+ ", kinderName=" + kinderName + "]";
	}


}
