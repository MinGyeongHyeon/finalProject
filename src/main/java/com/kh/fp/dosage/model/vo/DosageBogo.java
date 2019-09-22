package com.kh.fp.dosage.model.vo;

import java.sql.Date;

public class DosageBogo implements java.io.Serializable{
	private int bogoNo;
	private int dosageNo;
	private int userNo;
	private String bogoContent;
	private Date bogoDate;

	public DosageBogo() {}

	public DosageBogo(int bogoNo, int dosageNo, int userNo, String bogoContent, Date bogoDate) {
		super();
		this.bogoNo = bogoNo;
		this.dosageNo = dosageNo;
		this.userNo = userNo;
		this.bogoContent = bogoContent;
		this.bogoDate = bogoDate;
	}

	public int getBogoNo() {
		return bogoNo;
	}

	public void setBogoNo(int bogoNo) {
		this.bogoNo = bogoNo;
	}

	public int getDosageNo() {
		return dosageNo;
	}

	public void setDosageNo(int dosageNo) {
		this.dosageNo = dosageNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getBogoContent() {
		return bogoContent;
	}

	public void setBogoContent(String bogoContent) {
		this.bogoContent = bogoContent;
	}

	public Date getBogoDate() {
		return bogoDate;
	}

	public void setBogoDate(Date bogoDate) {
		this.bogoDate = bogoDate;
	}

	@Override
	public String toString() {
		return "DosageBogo [bogoNo=" + bogoNo + ", dosageNo=" + dosageNo + ", userNo=" + userNo + ", bogoContent="
				+ bogoContent + ", bogoDate=" + bogoDate + "]";
	}


}
