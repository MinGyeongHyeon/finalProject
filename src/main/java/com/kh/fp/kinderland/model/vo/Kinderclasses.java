package com.kh.fp.kinderland.model.vo;

import java.sql.Date;

public class Kinderclasses {
	
	private int classNo;
	private int kinderNo;
	private String className;
	private Date openedDate;
	private String semester;
	private String division;
	private int teacherNo;
	private int childrenNo;
	private String userName;
	private String childrenName;
	
	public Kinderclasses() {}

	public Kinderclasses(int classNo, int kinderNo, String className, Date openedDate, String semester, String division,
			int teacherNo, int childrenNo, String userName, String childrenName) {
		super();
		this.classNo = classNo;
		this.kinderNo = kinderNo;
		this.className = className;
		this.openedDate = openedDate;
		this.semester = semester;
		this.division = division;
		this.teacherNo = teacherNo;
		this.childrenNo = childrenNo;
		this.userName = userName;
		this.childrenName = childrenName;
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

	public Date getOpenedDate() {
		return openedDate;
	}

	public void setOpenedDate(Date openedDate) {
		this.openedDate = openedDate;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
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

	public int getChildrenNo() {
		return childrenNo;
	}

	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getChildrenName() {
		return childrenName;
	}

	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}

	@Override
	public String toString() {
		return "Kinderclasses [classNo=" + classNo + ", kinderNo=" + kinderNo + ", className=" + className
				+ ", openedDate=" + openedDate + ", semester=" + semester + ", division=" + division + ", teacherNo="
				+ teacherNo + ", childrenNo=" + childrenNo + ", userName=" + userName + ", childrenName=" + childrenName
				+ "]";
	}

	
	
	
	
	
	
	
}
