package com.kh.fp.kinderland.model.vo;

import java.io.Serializable;

public class SelectKinder implements Serializable{
	
	private String kinderAddress;
	private String kinName;
	
	public SelectKinder() {}

	public SelectKinder(String kinderAddress, String kinName) {
		super();
		this.kinderAddress = kinderAddress;
		this.kinName = kinName;
	}

	public String getKinderAddress() {
		return kinderAddress;
	}

	public void setKinderAddress(String kinderAddress) {
		this.kinderAddress = kinderAddress;
	}

	public String getKinName() {
		return kinName;
	}

	public void setKinName(String kinName) {
		this.kinName = kinName;
	}

	@Override
	public String toString() {
		return "SelectKinder [kinderAddress=" + kinderAddress + ", kinName=" + kinName + "]";
	}

	
	
	

}
