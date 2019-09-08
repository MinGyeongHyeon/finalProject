package com.kh.fp.note.model.vo;

import java.util.Arrays;

public class Kindergarden implements java.io.Serializable{
	private int kinderNo;
	private String kinderName;
	private String phone;
	private String address;
	private String sido;
	private String sigungu;
	private String address3;
	private String[] className;
	private Users users;


	public Kindergarden() {}


	public Kindergarden(int kinderNo, String kinderName, String phone, String address, String sido, String sigungu,
			String address3, String[] className, Users users) {
		super();
		this.kinderNo = kinderNo;
		this.kinderName = kinderName;
		this.phone = phone;
		this.address = address;
		this.sido = sido;
		this.sigungu = sigungu;
		this.address3 = address3;
		this.className = className;
		this.users = users;
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


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
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


	public Users getUsers() {
		return users;
	}


	public void setUsers(Users users) {
		this.users = users;
	}


	@Override
	public String toString() {
		return "Kindergarden [kinderNo=" + kinderNo + ", kinderName=" + kinderName + ", phone=" + phone + ", address="
				+ address + ", sido=" + sido + ", sigungu=" + sigungu + ", address3=" + address3 + ", className="
				+ Arrays.toString(className) + ", users=" + users + "]";
	}



}
