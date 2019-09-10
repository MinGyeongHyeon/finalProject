package com.kh.fp.member.model.vo;

public class KinderYN {
	
	private String userName;
	private String className;
	
	public KinderYN() {}

	public KinderYN(String userName, String className) {
		super();
		this.userName = userName;
		this.className = className;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	@Override
	public String toString() {
		return "KinderYN [userName=" + userName + ", className=" + className + "]";
	}
	
	

}
