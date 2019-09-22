package com.kh.fp.kinderland.model.vo;

public class KinderUserName {
	
	private String childrenName;
	private String userName;
	
	public KinderUserName() {}
	
	public KinderUserName(String childrenName, String userName) {
		super();
		this.childrenName = childrenName;
		this.userName = userName;
	}

	public String getChildrenName() {
		return childrenName;
	}

	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "KinderUserName [childrenName=" + childrenName + ", userName=" + userName + "]";
	}
	
	

	
}
