package com.kh.fp.pay.model.vo;

import java.sql.Date;

public class Kindergarden implements java.io.Serializable{
	private int kinderNo;
	private String kinderName;
	private String kinderPhone;
	private String kinderAddress;
	private Date usingDate;
	
	public Kindergarden() {}

	public Kindergarden(int kinderNo, String kinderName, String kinderPhone, String kinderAddress, Date usingDate) {
		super();
		this.kinderNo = kinderNo;
		this.kinderName = kinderName;
		this.kinderPhone = kinderPhone;
		this.kinderAddress = kinderAddress;
		this.usingDate = usingDate;
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

	public Date getUsingDate() {
		return usingDate;
	}

	public void setUsingDate(Date usingDate) {
		this.usingDate = usingDate;
	}

	@Override
	public String toString() {
		return "Kindergarden [kinderNo=" + kinderNo + ", kinderName=" + kinderName + ", kinderPhone=" + kinderPhone
				+ ", kinderAddress=" + kinderAddress + ", usingDate=" + usingDate + "]";
	}

	
	
}


