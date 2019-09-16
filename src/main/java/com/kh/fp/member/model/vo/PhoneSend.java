package com.kh.fp.member.model.vo;

public class PhoneSend {
	
	private String msg;
	private String rphone;
	private String sphone1;
	private String sphone2;
	private String sphone3;
	private String rdate;
	private String rtime;
	private String testflag;
	private String destination;
	private String repeatFlag;
	private String repeatNum;
	private String repeatTime;
	private String returnur1;
	private String nointeractive;
	private String smsType;
	
	public PhoneSend() {}
	
	public PhoneSend(String msg, String rphone, String sphone1, String sphone2, String sphone3, String rdate,
			String rtime, String testflag, String destination, String repeatFlag, String repeatNum, String repeatTime,
			String returnur1, String nointeractive, String smsType) {
		super();
		this.msg = msg;
		this.rphone = rphone;
		this.sphone1 = sphone1;
		this.sphone2 = sphone2;
		this.sphone3 = sphone3;
		this.rdate = rdate;
		this.rtime = rtime;
		this.testflag = testflag;
		this.destination = destination;
		this.repeatFlag = repeatFlag;
		this.repeatNum = repeatNum;
		this.repeatTime = repeatTime;
		this.returnur1 = returnur1;
		this.nointeractive = nointeractive;
		this.smsType = smsType;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getRphone() {
		return rphone;
	}

	public void setRphone(String rphone) {
		this.rphone = rphone;
	}

	public String getSphone1() {
		return sphone1;
	}

	public void setSphone1(String sphone1) {
		this.sphone1 = sphone1;
	}

	public String getSphone2() {
		return sphone2;
	}

	public void setSphone2(String sphone2) {
		this.sphone2 = sphone2;
	}

	public String getSphone3() {
		return sphone3;
	}

	public void setSphone3(String sphone3) {
		this.sphone3 = sphone3;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getRtime() {
		return rtime;
	}

	public void setRtime(String rtime) {
		this.rtime = rtime;
	}

	public String getTestflag() {
		return testflag;
	}

	public void setTestflag(String testflag) {
		this.testflag = testflag;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getRepeatFlag() {
		return repeatFlag;
	}

	public void setRepeatFlag(String repeatFlag) {
		this.repeatFlag = repeatFlag;
	}

	public String getRepeatNum() {
		return repeatNum;
	}

	public void setRepeatNum(String repeatNum) {
		this.repeatNum = repeatNum;
	}

	public String getRepeatTime() {
		return repeatTime;
	}

	public void setRepeatTime(String repeatTime) {
		this.repeatTime = repeatTime;
	}

	public String getReturnur1() {
		return returnur1;
	}

	public void setReturnur1(String returnur1) {
		this.returnur1 = returnur1;
	}

	public String getNointeractive() {
		return nointeractive;
	}

	public void setNointeractive(String nointeractive) {
		this.nointeractive = nointeractive;
	}

	public String getSmsType() {
		return smsType;
	}

	public void setSmsType(String smsType) {
		this.smsType = smsType;
	}

	@Override
	public String toString() {
		return "PhoneSend [msg=" + msg + ", rphone=" + rphone + ", sphone1=" + sphone1 + ", sphone2=" + sphone2
				+ ", sphone3=" + sphone3 + ", rdate=" + rdate + ", rtime=" + rtime + ", testflag=" + testflag
				+ ", destination=" + destination + ", repeatFlag=" + repeatFlag + ", repeatNum=" + repeatNum
				+ ", repeatTime=" + repeatTime + ", returnur1=" + returnur1 + ", nointeractive=" + nointeractive
				+ ", smsType=" + smsType + "]";
	}
	


}
