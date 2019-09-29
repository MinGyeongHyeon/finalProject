package com.kh.fp.attendance.model.vo;

public class Children implements java.io.Serializable{
	private int childrenNo;
	private String childrenName;
	private String Birth;
	private String gender;
	private int userNo;
	private String time;
	private String mTime;
	private String status;
	private String attDate;
	
	public Children() {}

	public Children(int childrenNo, String childrenName, String birth, String gender, int userNo) {
		super();
		this.childrenNo = childrenNo;
		this.childrenName = childrenName;
		Birth = birth;
		this.gender = gender;
		this.userNo = userNo;
	}

	public Children(int childrenNo, String childrenName, String birth, String gender, int userNo, String time,
			String mTime, String status, String attDate) {
		super();
		this.childrenNo = childrenNo;
		this.childrenName = childrenName;
		Birth = birth;
		this.gender = gender;
		this.userNo = userNo;
		this.time = time;
		this.mTime = mTime;
		this.status = status;
		this.attDate = attDate;
	}

	public int getChildrenNo() {
		return childrenNo;
	}

	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}

	public String getChildrenName() {
		return childrenName;
	}

	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}

	public String getBirth() {
		return Birth;
	}

	public void setBirth(String birth) {
		Birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getmTime() {
		return mTime;
	}

	public void setmTime(String mTime) {
		this.mTime = mTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAttDate() {
		return attDate;
	}

	public void setAttDate(String attDate) {
		this.attDate = attDate;
	}

	@Override
	public String toString() {
		return "Children [childrenNo=" + childrenNo + ", childrenName=" + childrenName + ", Birth=" + Birth
				+ ", gender=" + gender + ", userNo=" + userNo + ", time=" + time + ", mTime=" + mTime + ", status="
				+ status + ", attDate=" + attDate + "]";
	}

	

	
	
	
}
