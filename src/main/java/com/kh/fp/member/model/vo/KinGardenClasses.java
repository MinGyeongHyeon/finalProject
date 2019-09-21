package com.kh.fp.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class KinGardenClasses implements Serializable{
	
	private int classNo;
	private String divistion;
	private int kinderNo;
	private int teacherNo;
	private int childrenNo;
	private Date openedDate;
	private String semester;
	private String className;
	private String childrenName;
	
	
	public KinGardenClasses() {}


	public KinGardenClasses(int classNo, String divistion, int kinderNo, int teacherNo, int childrenNo, Date openedDate,
			String semester, String className, String childrenName) {
		super();
		this.classNo = classNo;
		this.divistion = divistion;
		this.kinderNo = kinderNo;
		this.teacherNo = teacherNo;
		this.childrenNo = childrenNo;
		this.openedDate = openedDate;
		this.semester = semester;
		this.className = className;
		this.childrenName = childrenName;
	}


	public int getClassNo() {
		return classNo;
	}


	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}


	public String getDivistion() {
		return divistion;
	}


	public void setDivistion(String divistion) {
		this.divistion = divistion;
	}


	public int getKinderNo() {
		return kinderNo;
	}


	public void setKinderNo(int kinderNo) {
		this.kinderNo = kinderNo;
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


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}


	public String getChildrenName() {
		return childrenName;
	}


	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}


	@Override
	public String toString() {
		return "KinGardenClasses [classNo=" + classNo + ", divistion=" + divistion + ", kinderNo=" + kinderNo
				+ ", teacherNo=" + teacherNo + ", childrenNo=" + childrenNo + ", openedDate=" + openedDate
				+ ", semester=" + semester + ", className=" + className + ", childrenName=" + childrenName + "]";
	}


	
	

}
