package com.kh.fp.kinderland.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class KinGardenClasses implements Serializable{
	
	private int classNo;
	private String division;
	private int kinderNo;
	private String className;
	

	
	
	public KinGardenClasses() {}




	public KinGardenClasses(int classNo, String division, int kinderNo, String className) {
		super();
		this.classNo = classNo;
		this.division = division;
		this.kinderNo = kinderNo;
		this.className = className;
	}




	public int getClassNo() {
		return classNo;
	}




	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}




	public String getDivision() {
		return division;
	}




	public void setDivision(String division) {
		this.division = division;
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




	@Override
	public String toString() {
		return "KinGardenClasses [classNo=" + classNo + ", division=" + division + ", kinderNo=" + kinderNo
				+ ", className=" + className + "]";
	}



	
	

}
