package com.kh.fp.kinderland.model.vo;

public class ChildrenClassInsert {
	
	private int kinderNo;
	private String className;
	private int childrenNo;
	
	
	public ChildrenClassInsert() {}


	public ChildrenClassInsert(int kinderNo, String className, int childrenNo) {
		super();
		this.kinderNo = kinderNo;
		this.className = className;
		this.childrenNo = childrenNo;
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


	@Override
	public String toString() {
		return "ChildrenClassInsert [kinderNo=" + kinderNo + ", className=" + className + ", childrenNo=" + childrenNo
				+ "]";
	}
	
	
}
