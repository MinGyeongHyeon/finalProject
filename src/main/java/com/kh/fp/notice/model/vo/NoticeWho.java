package com.kh.fp.notice.model.vo;

import java.io.Serializable;
import java.util.ArrayList;

public class NoticeWho implements Serializable{
	
	private int classNum;
	private int kinderNum;
	private String className;
	private int userNum;
	private String role;
	private String teacher;
	private int teacherNum;
	
	public NoticeWho() {}


	public NoticeWho(int classNum, int kinderNum, String className,String role,String teacher,int teacherNum) {
		super();
		this.classNum = classNum;
		this.kinderNum = kinderNum;
		this.className = className;
		this.role = role;
		this.teacher = teacher;
		this.teacherNum = teacherNum;
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


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}

	
	public int getUserNum() {
		return userNum;
	}


	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}


	

	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}




	public String getTeacher() {
		return teacher;
	}


	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	

	public int getTeacherNum() {
		return teacherNum;
	}


	public void setTeacherNum(int teacherNum) {
		this.teacherNum = teacherNum;
	}


	

	@Override
	public String toString() {
		return "NoticeWho [classNum=" + classNum + ", kinderNum=" + kinderNum + ", className=" + className
				+ ", userNum=" + userNum + ", role=" + role + ", teacher=" + teacher + ", teacherNum=" + teacherNum
				+ "]";
	}


	public static void addAttribute(ArrayList selectWho) {
		// TODO Auto-generated method stub
		
	}


	
	
	
}
