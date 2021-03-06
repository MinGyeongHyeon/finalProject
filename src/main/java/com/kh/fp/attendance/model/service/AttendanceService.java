package com.kh.fp.attendance.model.service;

import java.util.ArrayList;

import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.vo.Attendance;
import com.kh.fp.attendance.model.vo.Children;

public interface AttendanceService {

	ArrayList<Children> dailyAttendance(int teacherNo) throws DailyException;
	
	ArrayList<Children> dailyAttendance1(int teacherNo) throws DailyException;

	ArrayList<Children> monthAttendance(int teacherNo) throws DailyException;

	ArrayList<Children> monthAttendance1(int teacherNo) throws DailyException;
	
	int dailyChildrenCount(int teacherNo) throws DailyException;
	
	int dailyChildrenCount1(int teacherNo) throws DailyException;

	int insertDailyAtt(Attendance atten) throws DailyException;

	int countDailyAtt(Attendance atten);

	int updateDailyAtt(Attendance atten);

	ArrayList<Children> dailyAttendance12(int userNo) throws DailyException;

	ArrayList<Children> dailyAttendance2(int teacherNo) throws DailyException;

	int dailyChildrenCount12(int userNo) throws DailyException;

	int dailyChildrenCount2(int teacherNo) throws DailyException;

}
