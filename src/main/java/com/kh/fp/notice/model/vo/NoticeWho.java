package com.kh.fp.notice.model.vo;

import java.io.Serializable;
import java.util.ArrayList;

public class NoticeWho implements Serializable{
	
	private int classNum;
	private int kinderNum;
	private String className;
	private int userNum;
	
	public NoticeWho() {}


	public NoticeWho(int classNum, int kinderNum, String className) {
		super();
		this.classNum = classNum;
		this.kinderNum = kinderNum;
		this.className = className;
	}
	
	public NoticeWho(int classNum, int kinderNum, int userNum) {
		super();
		this.classNum = classNum;
		this.kinderNum = kinderNum;
		this.userNum = userNum;
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


	

	@Override
	public String toString() {
		return "NoticeWho [classNum=" + classNum + ", kinderNum=" + kinderNum + ", className=" + className
				+ ", userNum=" + userNum + "]";
	}


	public static void addAttribute(ArrayList selectWho) {
		// TODO Auto-generated method stub
		
	}


	
	
	
}
