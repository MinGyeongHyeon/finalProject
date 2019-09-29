package com.kh.fp.bus.model.vo;

public class bus {

	
	private int busNo;
	private int childrenNo;
	private String busYN;
	private String geton;
	private String getoff;
	private String busDate;
	private int classNum;
	private int kinderNum;
	
	public bus() {}

	
	public bus(int busNo, int childrenNo, String busYN, String geton, String busDate, int classNum, int kinderNum) {
		super();
		this.busNo = busNo;
		this.childrenNo = childrenNo;
		this.busYN = busYN;
		this.geton = geton;
		this.busDate = busDate;
		this.classNum = classNum;
		this.kinderNum = kinderNum;
	}


	public bus(int busNo, int childrenNo, String busYN, String geton, String getoff, String busDate, int classNum,
			int kinderNum) {
		super();
		this.busNo = busNo;
		this.childrenNo = childrenNo;
		this.busYN = busYN;
		this.geton = geton;
		this.getoff = getoff;
		this.busDate = busDate;
		this.classNum = classNum;
		this.kinderNum = kinderNum;
	}

	public int getBusNo() {
		return busNo;
	}

	public void setBusNo(int busNo) {
		this.busNo = busNo;
	}

	public int getChildrenNo() {
		return childrenNo;
	}

	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}

	public String getBusYN() {
		return busYN;
	}

	public void setBusYN(String busYN) {
		this.busYN = busYN;
	}

	public String getGeton() {
		return geton;
	}

	public void setGeton(String geton) {
		this.geton = geton;
	}

	public String getGetoff() {
		return getoff;
	}

	public void setGetoff(String getoff) {
		this.getoff = getoff;
	}

	public String getBusDate() {
		return busDate;
	}

	public void setBusDate(String busDate) {
		this.busDate = busDate;
	}

	public int getClassNum() {
		return classNum;
	}

	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}

	public int getKinderNum() {
		return kinderNum;
	}

	public void setKinderNum(int kinderNum) {
		this.kinderNum = kinderNum;
	}

	@Override
	public String toString() {
		return "bus [busNo=" + busNo + ", childrenNo=" + childrenNo + ", busYN=" + busYN + ", geton=" + geton
				+ ", getoff=" + getoff + ", busDate=" + busDate + ", classNum=" + classNum + ", kinderNum=" + kinderNum
				+ "]";
	}
	
	
	
}
