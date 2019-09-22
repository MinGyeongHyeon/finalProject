package com.kh.fp.meal.model.vo;

import java.sql.Date;

public class Meal implements java.io.Serializable{
	private int mealNo;
	private Date mealDate;
	private String mealContent;
	private String mealType;
	private int kinderNo;
	
	public Meal() {}

	public Meal(int mealNo, Date mealDate, String mealContent, String mealType, int kinderNo) {
		super();
		this.mealNo = mealNo;
		this.mealDate = mealDate;
		this.mealContent = mealContent;
		this.mealType = mealType;
		this.kinderNo = kinderNo;
	}

	public int getMealNo() {
		return mealNo;
	}

	public void setMealNo(int mealNo) {
		this.mealNo = mealNo;
	}

	public Date getMealDate() {
		return mealDate;
	}

	public void setMealDate(Date mealDate) {
		this.mealDate = mealDate;
	}

	public String getMealContent() {
		return mealContent;
	}

	public void setMealContent(String mealContent) {
		this.mealContent = mealContent;
	}

	public String getMealType() {
		return mealType;
	}

	public void setMealType(String mealType) {
		this.mealType = mealType;
	}

	public int getKinderNo() {
		return kinderNo;
	}

	public void setKinderNo(int kinderNo) {
		this.kinderNo = kinderNo;
	}

	@Override
	public String toString() {
		return "Meal [mealNo=" + mealNo + ", mealDate=" + mealDate + ", mealContent=" + mealContent + ", mealType="
				+ mealType + ", kinderNo=" + kinderNo + "]";
	}

	


	
}
