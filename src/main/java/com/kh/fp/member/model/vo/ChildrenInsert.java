package com.kh.fp.member.model.vo;

public class ChildrenInsert {
	
	private int childrenNo;
	private int kinderNo;


	public ChildrenInsert() {}


	public ChildrenInsert(int childrenNo, int kinderNo) {
		super();
		this.childrenNo = childrenNo;
		this.kinderNo = kinderNo;
	}


	public int getChildrenNo() {
		return childrenNo;
	}


	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}


	public int getKinderNo() {
		return kinderNo;
	}


	public void setKinderNo(int kinderNo) {
		this.kinderNo = kinderNo;
	}


	@Override
	public String toString() {
		return "ChildrenInsert [childrenNo=" + childrenNo + ", kinderNo=" + kinderNo + "]";
	}


	
	
	
}
