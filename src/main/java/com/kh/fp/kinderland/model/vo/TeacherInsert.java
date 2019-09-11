package com.kh.fp.kinderland.model.vo;

public class TeacherInsert {
	
	private int teacherNo;
	private int kinderNo;
	
	public TeacherInsert() {}

	public TeacherInsert(int teacherNo, int kinderNo) {
		super();
		this.teacherNo = teacherNo;
		this.kinderNo = kinderNo;
	}

	public int getTeacherNo() {
		return teacherNo;
	}

	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
	}

	public int getKinderNo() {
		return kinderNo;
	}

	public void setKinderNo(int kinderNo) {
		this.kinderNo = kinderNo;
	}

	@Override
	public String toString() {
		return "TeacherInsert [teacherNo=" + teacherNo + ", kinderNo=" + kinderNo + "]";
	}
	
	
	

}
