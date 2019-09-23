package com.kh.fp.dosage.model.vo;

import java.sql.Date;

import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.note.model.vo.Users;

public class Dosage implements java.io.Serializable{
	private int dosageNo;
	private String dosageDate;
	private String symptom;
	private String kinds;
	private String dosageMl;
	private String dosageCount;
	private String dosageTime;
	private String dosageKeep;
	private String dosageProblem;
	private String reading;
	private Date reDate;
	private int userNo;
	private int childrenNo;
	private String status;

	public Dosage() {}

	public Dosage(int dosageNo, String dosageDate, String symptom, String kinds, String dosageMl, String dosageCount,
			String dosageTime, String dosageKeep, String dosageProblem, String reading, Date reDate, int userNo,
			int childrenNo, String status) {
		super();
		this.dosageNo = dosageNo;
		this.dosageDate = dosageDate;
		this.symptom = symptom;
		this.kinds = kinds;
		this.dosageMl = dosageMl;
		this.dosageCount = dosageCount;
		this.dosageTime = dosageTime;
		this.dosageKeep = dosageKeep;
		this.dosageProblem = dosageProblem;
		this.reading = reading;
		this.reDate = reDate;
		this.userNo = userNo;
		this.childrenNo = childrenNo;
		this.status = status;
	}

	public int getDosageNo() {
		return dosageNo;
	}

	public void setDosageNo(int dosageNo) {
		this.dosageNo = dosageNo;
	}

	public String getDosageDate() {
		return dosageDate;
	}

	public void setDosageDate(String dosageDate) {
		this.dosageDate = dosageDate;
	}

	public String getSymptom() {
		return symptom;
	}

	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}

	public String getKinds() {
		return kinds;
	}

	public void setKinds(String kinds) {
		this.kinds = kinds;
	}

	public String getDosageMl() {
		return dosageMl;
	}

	public void setDosageMl(String dosageMl) {
		this.dosageMl = dosageMl;
	}

	public String getDosageCount() {
		return dosageCount;
	}

	public void setDosageCount(String dosageCount) {
		this.dosageCount = dosageCount;
	}

	public String getDosageTime() {
		return dosageTime;
	}

	public void setDosageTime(String dosageTime) {
		this.dosageTime = dosageTime;
	}

	public String getDosageKeep() {
		return dosageKeep;
	}

	public void setDosageKeep(String dosageKeep) {
		this.dosageKeep = dosageKeep;
	}

	public String getDosageProblem() {
		return dosageProblem;
	}

	public void setDosageProblem(String dosageProblem) {
		this.dosageProblem = dosageProblem;
	}

	public String getReading() {
		return reading;
	}

	public void setReading(String reading) {
		this.reading = reading;
	}

	public Date getReDate() {
		return reDate;
	}

	public void setReDate(Date reDate) {
		this.reDate = reDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getChildrenNo() {
		return childrenNo;
	}

	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Dosage [dosageNo=" + dosageNo + ", dosageDate=" + dosageDate + ", symptom=" + symptom + ", kinds="
				+ kinds + ", dosageMl=" + dosageMl + ", dosageCount=" + dosageCount + ", dosageTime=" + dosageTime
				+ ", dosageKeep=" + dosageKeep + ", dosageProblem=" + dosageProblem + ", reading=" + reading
				+ ", reDate=" + reDate + ", userNo=" + userNo + ", childrenNo=" + childrenNo + ", status=" + status
				+ "]";
	}


}
