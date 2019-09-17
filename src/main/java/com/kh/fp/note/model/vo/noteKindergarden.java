package com.kh.fp.note.model.vo;

import java.util.Arrays;

public class noteKindergarden implements java.io.Serializable{
	private int kinderNo;
	private String kinderName;
	private String kinderPhone;
	private String kinderAddress;
	private String sido;
	private String sigungu;
	private String address3;
	private String[] className;
	private String userName;
	private Users Users;


	public noteKindergarden() {}


	public noteKindergarden(int kinderNo, String kinderName, String kinderPhone, String kinderAddress, String sido,
			String sigungu, String address3, String[] className, String userName, com.kh.fp.note.model.vo.Users users) {
		super();
		this.kinderNo = kinderNo;
		this.kinderName = kinderName;
		this.kinderPhone = kinderPhone;
		this.kinderAddress = kinderAddress;
		this.sido = sido;
		this.sigungu = sigungu;
		this.address3 = address3;
		this.className = className;
		this.userName = userName;
		Users = users;
	}


	public int getKinderNo() {
		return kinderNo;
	}


	public void setKinderNo(int kinderNo) {
		this.kinderNo = kinderNo;
	}


	public String getKinderName() {
		return kinderName;
	}


	public void setKinderName(String kinderName) {
		this.kinderName = kinderName;
	}


	public String getKinderPhone() {
		return kinderPhone;
	}


	public void setKinderPhone(String kinderPhone) {
		this.kinderPhone = kinderPhone;
	}


	public String getKinderAddress() {
		return kinderAddress;
	}


	public void setKinderAddress(String kinderAddress) {
		this.kinderAddress = kinderAddress;
	}


	public String getSido() {
		return sido;
	}


	public void setSido(String sido) {
		this.sido = sido;
	}


	public String getSigungu() {
		return sigungu;
	}


	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}


	public String getAddress3() {
		return address3;
	}


	public void setAddress3(String address3) {
		this.address3 = address3;
	}


	public String[] getClassName() {
		return className;
	}


	public void setClassName(String[] className) {
		this.className = className;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public Users getUsers() {
		return Users;
	}


	public void setUsers(Users users) {
		Users = users;
	}


	@Override
	public String toString() {
		return "noteKindergarden [kinderNo=" + kinderNo + ", kinderName=" + kinderName + ", kinderPhone=" + kinderPhone
				+ ", kinderAddress=" + kinderAddress + ", sido=" + sido + ", sigungu=" + sigungu + ", address3="
				+ address3 + ", className=" + Arrays.toString(className) + ", userName=" + userName + ", Users=" + Users
				+ "]";
	}






}
