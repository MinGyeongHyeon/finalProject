package com.kh.fp.member.model.vo;

public class KinderYN {
	
	private String userName;
	private String className;
	private String phone;
	private String classification;
	private String childrenName;
	private String childrenNo;
	private String teacherNo;
	
	public KinderYN() {}

	public KinderYN(String userName, String className, String phone, String classification, String childrenName,
			String childrenNo, String teacherNo) {
		super();
		this.userName = userName;
		this.className = className;
		this.phone = phone;
		this.classification = classification;
		this.childrenName = childrenName;
		this.childrenNo = childrenNo;
		this.teacherNo = teacherNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public String getChildrenName() {
		return childrenName;
	}

	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}

	public String getChildrenNo() {
		return childrenNo;
	}

	public void setChildrenNo(String childrenNo) {
		this.childrenNo = childrenNo;
	}

	public String getTeacherNo() {
		return teacherNo;
	}

	public void setTeacherNo(String teacherNo) {
		this.teacherNo = teacherNo;
	}

	@Override
	public String toString() {
		return "KinderYN [userName=" + userName + ", className=" + className + ", phone=" + phone + ", classification="
				+ classification + ", childrenName=" + childrenName + ", childrenNo=" + childrenNo + ", teacherNo="
				+ teacherNo + "]";
	}

	
	
	


	
	

}
