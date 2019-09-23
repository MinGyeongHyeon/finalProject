package com.kh.fp.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{
	
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private String phone;
	private Date enrollDate;
	private Date deleteDate;
	private String deleteReason;
	private String classification;
	private String status;
	private int usingStatus;
	
	public Member() {}

	public Member(int userNo, String userId, String userPwd, String userName, String email, String phone,
			Date enrollDate, Date deleteDate, String deleteReason, String classification, String status,
			int usingStatus) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.email = email;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.deleteDate = deleteDate;
		this.deleteReason = deleteReason;
		this.classification = classification;
		this.status = status;
		this.usingStatus = usingStatus;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getDeleteDate() {
		return deleteDate;
	}

	public void setDeleteDate(Date deleteDate) {
		this.deleteDate = deleteDate;
	}

	public String getDeleteReason() {
		return deleteReason;
	}

	public void setDeleteReason(String deleteReason) {
		this.deleteReason = deleteReason;
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getUsingStatus() {
		return usingStatus;
	}

	public void setUsingStatus(int usingStatus) {
		this.usingStatus = usingStatus;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", email=" + email + ", phone=" + phone + ", enrollDate=" + enrollDate + ", deleteDate=" + deleteDate
				+ ", deleteReason=" + deleteReason + ", classification=" + classification + ", status=" + status
				+ ", usingStatus=" + usingStatus + "]";
	}

	

}
