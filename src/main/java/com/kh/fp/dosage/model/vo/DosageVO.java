package com.kh.fp.dosage.model.vo;

import java.sql.Date;

public class DosageVO implements java.io.Serializable{
	private int dosageNo;			//투약의뢰번호
	private Date dosageDate;		//투약일
	private String symptom;			//증상
	private String kinds;			//약의종류
	private int dosageMl;			//투약용량
	private String dosageCount;		//투약횟수
	private String dosageTime;		//투약시간
	private String dosageKeep;		//보관방법
	private String dosageProblem;	//특이사항
	private String reading;			//열람여부
	private Date reDate;			//열람일시
	private int userNo;				//열람선생님회원번호
	private int childrenNo;			//투약의뢰자
	private String childrenName;	//자녀이름

	public DosageVO() {}

	public DosageVO(int dosageNo, Date dosageDate, String symptom, String kinds, int dosageMl, String dosageCount,
			String dosageTime, String dosageKeep, String dosageProblem, String reading, Date reDate, int userNo,
			int childrenNo, String childrenName) {
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
		this.childrenName = childrenName;
	}

	public int getDosageNo() {
		return dosageNo;
	}

	public void setDosageNo(int dosageNo) {
		this.dosageNo = dosageNo;
	}

	public Date getDosageDate() {
		return dosageDate;
	}

	public void setDosageDate(Date dosageDate) {
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

	public int getDosageMl() {
		return dosageMl;
	}

	public void setDosageMl(int dosageMl) {
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

	public String getChildrenName() {
		return childrenName;
	}

	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}

	@Override
	public String toString() {
		return "DosageVO [dosageNo=" + dosageNo + ", dosageDate=" + dosageDate + ", symptom=" + symptom + ", kinds="
				+ kinds + ", dosageMl=" + dosageMl + ", dosageCount=" + dosageCount + ", dosageTime=" + dosageTime
				+ ", dosageKeep=" + dosageKeep + ", dosageProblem=" + dosageProblem + ", reading=" + reading
				+ ", reDate=" + reDate + ", userNo=" + userNo + ", childrenNo=" + childrenNo + ", childrenName="
				+ childrenName + "]";
	}

}
