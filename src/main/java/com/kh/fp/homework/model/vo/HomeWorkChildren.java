package com.kh.fp.homework.model.vo;

import java.io.Serializable;

public class HomeWorkChildren {

	private String childrenName;
	private String fileName;
	private int childrenNo;
	
	public HomeWorkChildren() {}

	public HomeWorkChildren(String childrenName, String fileName, int childrenNo) {
		super();
		this.childrenName = childrenName;
		this.fileName = fileName;
		this.childrenNo = childrenNo;
	}

	public String getChildrenName() {
		return childrenName;
	}

	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getChildrenNo() {
		return childrenNo;
	}

	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}

	@Override
	public String toString() {
		return "HomeWorkChildren [childrenName=" + childrenName + ", fileName=" + fileName + ", childrenNo="
				+ childrenNo + "]";
	}

	
	
	



	
	
	

	
	
	
}
