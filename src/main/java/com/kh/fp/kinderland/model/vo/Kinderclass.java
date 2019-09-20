package com.kh.fp.kinderland.model.vo;

import java.sql.Date;

public class Kinderclass {
	
	private int kinderNo;
	private String className;
	private String classMax;
	private Date openedDate;
	private Date closeDate;
	
	public Kinderclass() {}

	public Kinderclass(int kinderNo, String className, String classMax, Date openedDate, Date closeDate) {
		super();
		this.kinderNo = kinderNo;
		this.className = className;
		this.classMax = classMax;
		this.openedDate = openedDate;
		this.closeDate = closeDate;
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

	public String getClassMax() {
		return classMax;
	}

	public void setClassMax(String classMax) {
		this.classMax = classMax;
	}

	public Date getOpenedDate() {
		return openedDate;
	}

	public void setOpenedDate(Date openedDate) {
		this.openedDate = openedDate;
	}

	public Date getCloseDate() {
		return closeDate;
	}

	public void setCloseDate(Date closeDate) {
		this.closeDate = closeDate;
	}

	@Override
	public String toString() {
		return "Kinderclass [kinderNo=" + kinderNo + ", className=" + className + ", classMax=" + classMax
				+ ", openedDate=" + openedDate + ", closeDate=" + closeDate + "]";
	}
	
	

}
