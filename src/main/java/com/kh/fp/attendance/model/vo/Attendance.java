package com.kh.fp.attendance.model.vo;

import java.sql.Date;

public class Attendance implements java.io.Serializable{
	private int childrenNo;
	private String childrenNo1;
	private int attendanceNo;
	private String attendancceYN;
	private String time;
	private String mTime;
	private String status;
	
	public Attendance() {}

	public Attendance(int childrenNo, String childrenNo1, int attendanceNo, String attendancceYN, String time,
			String mTime, String status) {
		super();
		this.childrenNo = childrenNo;
		this.childrenNo1 = childrenNo1;
		this.attendanceNo = attendanceNo;
		this.attendancceYN = attendancceYN;
		this.time = time;
		this.mTime = mTime;
		this.status = status;
	}

	public Attendance(int childrenNo, int attendanceNo, String attendancceYN, String time, String mTime,
			String status) {
		super();
		this.childrenNo = childrenNo;
		this.attendanceNo = attendanceNo;
		this.attendancceYN = attendancceYN;
		this.time = time;
		this.mTime = mTime;
		this.status = status;
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

	public String getAttendancceYN() {
		return attendancceYN;
	}

	public void setAttendancceYN(String attendancceYN) {
		this.attendancceYN = attendancceYN;
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

	@Override
	public String toString() {
		return "Attendance [childrenNo=" + childrenNo + ", childrenNo1=" + childrenNo1 + ", attendanceNo="
				+ attendanceNo + ", attendancceYN=" + attendancceYN + ", time=" + time + ", mTime=" + mTime
				+ ", status=" + status + "]";
	}

	

	
}
