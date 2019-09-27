package com.kh.fp.attendance.model.service;

import java.util.ArrayList;

import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.vo.Children;

public interface AttendanceService {

	ArrayList<Children> dailyAttendance(int teacherNo) throws DailyException;

	ArrayList<Children> monthAttendance(int teacherNo) throws DailyException;

	int dailyChildrenCount(int teacherNo) throws DailyException;

}
