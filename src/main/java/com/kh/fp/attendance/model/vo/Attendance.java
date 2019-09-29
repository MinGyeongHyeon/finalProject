package com.kh.fp.attendance.model.vo;

public class Attendance implements java.io.Serializable{
	private int childrenNo;
	private String childrenNo1;
	private int attendanceNo;
	private String attendanceYN;
	private String time;
	private String mTime;
	private String status;
	private String date;
	
	public Attendance() {}

	public Attendance(int childrenNo, String childrenNo1, int attendanceNo, String attendanceYN, String time,
			String mTime, String status, String date) {
		super();
		this.childrenNo = childrenNo;
		this.childrenNo1 = childrenNo1;
		this.attendanceNo = attendanceNo;
		this.attendanceYN = attendanceYN;
		this.time = time;
		this.mTime = mTime;
		this.status = status;
		this.date = date;
	}

	public int getChildrenNo() {
		return childrenNo;
	}

	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}

	public String getChildrenNo1() {
		return childrenNo1;
	}

	public void setChildrenNo1(String childrenNo1) {
		this.childrenNo1 = childrenNo1;
	}

	public int getAttendanceNo() {
		return attendanceNo;
	}

	public void setAttendanceNo(int attendanceNo) {
		this.attendanceNo = attendanceNo;
	}

	public String getAttendanceYN() {
		return attendanceYN;
	}

	public void setAttendanceYN(String attendanceYN) {
		this.attendanceYN = attendanceYN;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Attendance [childrenNo=" + childrenNo + ", childrenNo1=" + childrenNo1 + ", attendanceNo="
				+ attendanceNo + ", attendancceYN=" + attendanceYN + ", time=" + time + ", mTime=" + mTime
				+ ", status=" + status + ", date=" + date + "]";
	}
	
	

	
}
