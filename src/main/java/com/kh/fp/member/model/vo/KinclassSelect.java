package com.kh.fp.member.model.vo;

import java.sql.Date;

public class KinclassSelect {
	
	private int kinderNo;
	private String className;
	private int classMax;
	private Date openedDate;
	private Date closeDate;
	private String NameCount;
	
	public KinclassSelect() {}
	
	public KinclassSelect(int kinderNo, String className, int classMax, Date openedDate, Date closeDate,
			String nameCount) {
		super();
		this.kinderNo = kinderNo;
		this.className = className;
		this.classMax = classMax;
		this.openedDate = openedDate;
		this.closeDate = closeDate;
		NameCount = nameCount;
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

	public int getClassMax() {
		return classMax;
	}

	public void setClassMax(int classMax) {
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

	public String getNameCount() {
		return NameCount;
	}

	public void setNameCount(String nameCount) {
		NameCount = nameCount;
	}

	@Override
	public String toString() {
		return "KinclassSelect [kinderNo=" + kinderNo + ", className=" + className + ", classMax=" + classMax
				+ ", openedDate=" + openedDate + ", closeDate=" + closeDate + ", NameCount=" + NameCount + "]";
	}
	
	
	
	

}
