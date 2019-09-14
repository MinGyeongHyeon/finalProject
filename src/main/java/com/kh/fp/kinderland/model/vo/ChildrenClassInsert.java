package com.kh.fp.kinderland.model.vo;

public class ChildrenClassInsert {
	
	private int kinderNo;
	private String className;
	private int childrenNo;
	private int teacherNo;
	
	
	public ChildrenClassInsert() {}


	public ChildrenClassInsert(int kinderNo, String className, int childrenNo, int teacherNo) {
		super();
		this.kinderNo = kinderNo;
		this.className = className;
		this.childrenNo = childrenNo;
		this.teacherNo = teacherNo;
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


	public int getChildrenNo() {
		return childrenNo;
	}


	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}


	public int getTeacherNo() {
		return teacherNo;
	}


	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
	}


	@Override
	public String toString() {
		return "ChildrenClassInsert [kinderNo=" + kinderNo + ", className=" + className + ", childrenNo=" + childrenNo
				+ ", teacherNo=" + teacherNo + "]";
	}


	
	
}
