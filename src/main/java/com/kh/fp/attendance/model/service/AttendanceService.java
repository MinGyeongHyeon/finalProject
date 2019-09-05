package com.kh.fp.attendance.model.service;

import java.util.ArrayList;

import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.vo.Children;

public interface AttendanceService {

	ArrayList<Children> dailyAttendance() throws DailyException;

}
