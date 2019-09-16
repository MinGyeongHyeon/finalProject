package com.kh.fp.returnHome.model.vo;

public class ReturnHome implements java.io.Serializable {
	private int homeNo;
	private int childrenNo;
	private String homeDate;
	private String homeTime;
	private String homeWay;
	private String parentsName;
	private String parentsPhone;
	private String emergencyName;
	private String emergencyPhone;
	private String reading;
	private String reDate;
	private int userNo;
	
	public ReturnHome() {}

	public ReturnHome(int homeNo, int childrenNo, String homeDate, String homeTime, String homeWay, String parentsName,
			String parentsPhone, String emergencyName, String emergencyPhone, String reading, String reDate,
			int userNo) {
		super();
		this.homeNo = homeNo;
		this.childrenNo = childrenNo;
		this.homeDate = homeDate;
		this.homeTime = homeTime;
		this.homeWay = homeWay;
		this.parentsName = parentsName;
		this.parentsPhone = parentsPhone;
		this.emergencyName = emergencyName;
		this.emergencyPhone = emergencyPhone;
		this.reading = reading;
		this.reDate = reDate;
		this.userNo = userNo;
	}

	public int getHomeNo() {
		return homeNo;
	}

	public void setHomeNo(int homeNo) {
		this.homeNo = homeNo;
	}

	public int getChildrenNo() {
		return childrenNo;
	}

	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}

	public String getHomeDate() {
		return homeDate;
	}

	public void setHomeDate(String homeDate) {
		this.homeDate = homeDate;
	}

	public String getHomeTime() {
		return homeTime;
	}

	public void setHomeTime(String homeTime) {
		this.homeTime = homeTime;
	}

	public String getHomeWay() {
		return homeWay;
	}

	public void setHomeWay(String homeWay) {
		this.homeWay = homeWay;
	}

	public String getParentsName() {
		return parentsName;
	}

	public void setParentsName(String parentsName) {
		this.parentsName = parentsName;
	}

	public String getParentsPhone() {
		return parentsPhone;
	}

	public void setParentsPhone(String parentsPhone) {
		this.parentsPhone = parentsPhone;
	}

	public String getEmergencyName() {
		return emergencyName;
	}

	public void setEmergencyName(String emergencyName) {
		this.emergencyName = emergencyName;
	}

	public String getEmergencyPhone() {
		return emergencyPhone;
	}

	public void setEmergencyPhone(String emergencyPhone) {
		this.emergencyPhone = emergencyPhone;
	}

	public String getReading() {
		return reading;
	}

	public void setReading(String reading) {
		this.reading = reading;
	}

	public String getReDate() {
		return reDate;
	}

	public void setReDate(String reDate) {
		this.reDate = reDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "ReturnHome [homeNo=" + homeNo + ", childrenNo=" + childrenNo + ", homeDate=" + homeDate + ", homeTime="
				+ homeTime + ", homeWay=" + homeWay + ", parentsName=" + parentsName + ", parentsPhone=" + parentsPhone
				+ ", emergencyName=" + emergencyName + ", emergencyPhone=" + emergencyPhone + ", reading=" + reading
				+ ", reDate=" + reDate + ", userNo=" + userNo + "]";
	}
	
	
}
