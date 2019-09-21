package com.kh.fp.pay.model.vo;

import java.sql.Date;

public class Pay implements java.io.Serializable{
	private int PayNo;
	private int seasonId;
	private int userNo;
	private int payMoney;
	private int payOnNo;
	private Date payDate;
	private String payType;
	
	public Pay() {}

	public Pay(int payNo, int seasonId, int userNo, int payMoney, int payOnNo, Date payDate, String payType) {
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

	public int getSeasonId() {
		return seasonId;
	}

	public void setSeasonId(int seasonId) {
		this.seasonId = seasonId;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getPayMoney() {
		return payMoney;
	}

	public void setPayMoney(int payMoney) {
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

