package com.kh.fp.dosage.model.vo;

import java.sql.Date;

public class KinderClass implements java.io.Serializable{
	private int classNo;
	private int kinderNo;
	private String className;
	private Date openedDate;
	private String semester;
	private String division;
	private int teacherNo;
	private int childrenNo;

	public KinderClass() {}

	public KinderClass(int classNo, int kinderNo, String className, Date openedDate, String semester, String division,
			int teacherNo, int childrenNo) {
		super();
		this.classNo = classNo;
		this.kinderNo = kinderNo;
		this.className = className;
		this.openedDate = openedDate;
		this.semester = semester;
		this.division = division;
		this.teacherNo = teacherNo;
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

	@Override
	public String toString() {
		return "KinderClass [classNo=" + classNo + ", kinderNo=" + kinderNo + ", className=" + className
				+ ", openedDate=" + openedDate + ", semester=" + semester + ", division=" + division + ", teacherNo="
				+ teacherNo + ", childrenNo=" + childrenNo + "]";
	}



}
