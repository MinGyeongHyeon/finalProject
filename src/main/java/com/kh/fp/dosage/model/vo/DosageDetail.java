package com.kh.fp.dosage.model.vo;

import java.sql.Date;

public class DosageDetail implements java.io.Serializable{
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
	private String reDate;
	private int userNo;
	private String userName;
	private int childrenNo;
	private int classNo;
	private int kinderNo;
	private String className;
	private String division;
	private int teacherNo;
	private String childrenName;
	private String signUrl;
	private String status;
	private String bogoContent;

	public DosageDetail() {}

	public DosageDetail(int dosageNo, String dosageDate, String symptom, String kinds, String dosageMl,
			String dosageCount, String dosageTime, String dosageKeep, String dosageProblem, String reading,
			String reDate, int userNo, String userName, int childrenNo, int classNo, int kinderNo, String className,
			String division, int teacherNo, String childrenName, String signUrl, String status, String bogoContent) {
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
		this.userName = userName;
		this.childrenNo = childrenNo;
		this.classNo = classNo;
		this.kinderNo = kinderNo;
		this.className = className;
		this.division = division;
		this.teacherNo = teacherNo;
		this.childrenName = childrenName;
		this.signUrl = signUrl;
		this.status = status;
		this.bogoContent = bogoContent;
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

	public String getReDate() {
		return reDate;
	}

	public void setReDate(String reDate) {
		this.reDate = reDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getChildrenNo() {
		return childrenNo;
	}

	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public int getKinderNo() {
		return kinderNo;
	}

	public void setKinderNo(int kinderNo) {
		this.kinderNo = kinderNo;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public int getTeacherNo() {
		return teacherNo;
	}

	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
	}

	public String getChildrenName() {
		return childrenName;
	}

	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}

	public String getSignUrl() {
		return signUrl;
	}

	public void setSignUrl(String signUrl) {
		this.signUrl = signUrl;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getBogoContent() {
		return bogoContent;
	}

	public void setBogoContent(String bogoContent) {
		this.bogoContent = bogoContent;
	}

	@Override
	public String toString() {
		return "DosageDetail [dosageNo=" + dosageNo + ", dosageDate=" + dosageDate + ", symptom=" + symptom + ", kinds="
				+ kinds + ", dosageMl=" + dosageMl + ", dosageCount=" + dosageCount + ", dosageTime=" + dosageTime
				+ ", dosageKeep=" + dosageKeep + ", dosageProblem=" + dosageProblem + ", reading=" + reading
				+ ", reDate=" + reDate + ", userNo=" + userNo + ", userName=" + userName + ", childrenNo=" + childrenNo
				+ ", classNo=" + classNo + ", kinderNo=" + kinderNo + ", className=" + className + ", division="
				+ division + ", teacherNo=" + teacherNo + ", childrenName=" + childrenName + ", signUrl=" + signUrl
				+ ", status=" + status + ", bogoContent=" + bogoContent + "]";
	}



}
