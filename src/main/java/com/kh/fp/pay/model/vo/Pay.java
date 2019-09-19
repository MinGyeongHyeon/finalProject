package com.kh.fp.pay.model.vo;

import java.sql.Date;

public class Pay implements java.io.Serializable{
	private int PayNo;
	private String seasonId;
	private int userNo;
	private String payMoney;
	private int payOnNo;
	private Date payDate;
	private String payType;
	
	public Pay() {}

	public Pay(int payNo, String seasonId, int userNo, String payMoney, int payOnNo, Date payDate, String payType) {
		super();
		PayNo = payNo;
		this.seasonId = seasonId;
		this.userNo = userNo;
		this.payMoney = payMoney;
		this.payOnNo = payOnNo;
		this.payDate = payDate;
		this.payType = payType;
	}

	public int getPayNo() {
		return PayNo;
	}

	public void setPayNo(int payNo) {
		PayNo = payNo;
	}

	public String getSeasonId() {
		return seasonId;
	}

	public void setSeasonId(String seasonId) {
		this.seasonId = seasonId;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getPayMoney() {
		return payMoney;
	}

	public void setPayMoney(String payMoney) {
		this.payMoney = payMoney;
	}

	public int getPayOnNo() {
		return payOnNo;
	}

	public void setPayOnNo(int payOnNo) {
		this.payOnNo = payOnNo;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	@Override
	public String toString() {
		return "Pay [PayNo=" + PayNo + ", seasonId=" + seasonId + ", userNo=" + userNo + ", payMoney=" + payMoney
				+ ", payOnNo=" + payOnNo + ", payDate=" + payDate + ", payType=" + payType + "]";
	}
	
	
}

