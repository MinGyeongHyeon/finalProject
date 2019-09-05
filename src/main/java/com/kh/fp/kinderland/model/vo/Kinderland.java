package com.kh.fp.kinderland.model.vo;

import java.io.Serializable;

public class Kinderland implements Serializable{
	
	private int kinderNo;
	private String kinderName;
	private String kinderPhone;
	private String kinderAddress;
	
	public Kinderland() {}

	public Kinderland(int kinderNo, String kinderName, String kinderPhone, String kinderAddress) {
		super();
		this.kinderNo = kinderNo;
		this.kinderName = kinderName;
		this.kinderPhone = kinderPhone;
		this.kinderAddress = kinderAddress;
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

	@Override
	public String toString() {
		return "Kinderland [kinderNo=" + kinderNo + ", kinderName=" + kinderName + ", kinderPhone=" + kinderPhone
				+ ", kinderAddress=" + kinderAddress + "]";
	}
	
	
	
}
