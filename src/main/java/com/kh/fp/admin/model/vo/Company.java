package com.kh.fp.admin.model.vo;

import java.sql.Date;

public class Company implements java.io.Serializable{

	private String kinderName;
	private String payDateDay;
	private String payDateCount;
	private Date payDate;
	private String seasonName;
	
	public Company() {}

	public Company(String kinderName, String payDateDay, String payDateCount, Date payDate, String seasonName) {
		super();
		this.kinderName = kinderName;
		this.payDateDay = payDateDay;
		this.payDateCount = payDateCount;
		this.payDate = payDate;
		this.seasonName = seasonName;
	}

	public String getKinderName() {
		return kinderName;
	}

	public void setKinderName(String kinderName) {
		this.kinderName = kinderName;
	}

	public String getPayDateDay() {
		return payDateDay;
	}

	public void setPayDateDay(String payDateDay) {
		this.payDateDay = payDateDay;
	}

	public String getPayDateCount() {
		return payDateCount;
	}

	public void setPayDateCount(String payDateCount) {
		this.payDateCount = payDateCount;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getSeasonName() {
		return seasonName;
	}

	public void setSeasonName(String seasonName) {
		this.seasonName = seasonName;
	}

	@Override
	public String toString() {
		return "Company [kinderName=" + kinderName + ", payDateDay=" + payDateDay + ", payDateCount=" + payDateCount
				+ ", payDate=" + payDate + ", seasonName=" + seasonName + "]";
	}
	
	
}
