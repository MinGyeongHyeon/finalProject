package com.kh.fp.kinderland.model.vo;

import java.sql.Date;
import java.util.Arrays;

public class Kinderclass {
	
	private int kinderNo;
	private String className;
	private String classMax;
	private Date openedDate;
	private Date closeDate; 
	private int count;
	private String[] className2;
	private String[] className3;
	private String className4;
	private String className5;
	
	public Kinderclass() {}

	public Kinderclass(int kinderNo, String className, String classMax, Date openedDate, Date closeDate, int count,
			String[] className2, String[] className3, String className4, String className5) {
		super();
		this.kinderNo = kinderNo;
		this.className = className;
		this.classMax = classMax;
		this.openedDate = openedDate;
		this.closeDate = closeDate;
		this.count = count;
		this.className2 = className2;
		this.className3 = className3;
		this.className4 = className4;
		this.className5 = className5;
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

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String[] getClassName2() {
		return className2;
	}

	public void setClassName2(String[] className2) {
		this.className2 = className2;
	}

	public String[] getClassName3() {
		return className3;
	}

	public void setClassName3(String[] className3) {
		this.className3 = className3;
	}

	public String getClassName4() {
		return className4;
	}

	public void setClassName4(String className4) {
		this.className4 = className4;
	}

	public String getClassName5() {
		return className5;
	}

	public void setClassName5(String className5) {
		this.className5 = className5;
	}

	@Override
	public String toString() {
		return "Kinderclass [kinderNo=" + kinderNo + ", className=" + className + ", classMax=" + classMax
				+ ", openedDate=" + openedDate + ", closeDate=" + closeDate + ", count=" + count + ", className2="
				+ Arrays.toString(className2) + ", className3=" + Arrays.toString(className3) + ", className4="
				+ className4 + ", className5=" + className5 + "]";
	}


	




	

}
