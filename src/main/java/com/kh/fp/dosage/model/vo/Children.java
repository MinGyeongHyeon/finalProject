package com.kh.fp.dosage.model.vo;

import javax.tools.JavaCompiler;

public class Children implements java.io.Serializable{
	private int childrenNo;
	private String childrenName;
	private String birth;
	private String gender;
	private int userNo;

	public Children() {}

	public Children(int childrenNo, String childrenName, String birth, String gender, int userNo) {
		super();
		this.childrenNo = childrenNo;
		this.childrenName = childrenName;
		this.birth = birth;
		this.gender = gender;
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

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "Children [childrenNo=" + childrenNo + ", childrenName=" + childrenName + ", birth=" + birth
				+ ", gender=" + gender + ", userNo=" + userNo + "]";
	}



}
