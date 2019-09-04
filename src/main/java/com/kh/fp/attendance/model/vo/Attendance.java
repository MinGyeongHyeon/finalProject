package com.kh.fp.attendance.model.vo;

import java.sql.Date;

public class Attendance implements java.io.Serializable{
	private int childrenNo;
	private int attendanceNo;
	private String attendancceYN;
	private Date time;
	private Date mTime;
	private String status;
	
	public Attendance() {}

	public Attendance(int childrenNo, int attendanceNo, String attendancceYN, Date time, Date mTime, String status) {
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

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Date getmTime() {
		return mTime;
	}

	public void setmTime(Date mTime) {
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
		return "Attendance [childrenNo=" + childrenNo + ", attendanceNo=" + attendanceNo + ", attendancceYN="
				+ attendancceYN + ", time=" + time + ", mTime=" + mTime + ", status=" + status + "]";
	}
	
	
}
