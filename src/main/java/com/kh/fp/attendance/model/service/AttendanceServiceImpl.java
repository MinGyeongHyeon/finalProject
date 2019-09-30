package com.kh.fp.attendance.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.attendance.model.dao.AttendanceDao;
import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.vo.Attendance;
import com.kh.fp.attendance.model.vo.Children;

@Service
public class AttendanceServiceImpl implements AttendanceService{

	@Autowired
	private AttendanceDao ad;
	@Autowired
	private SqlSessionTemplate sqlSession;


	@Override
	public ArrayList<Children> dailyAttendance(int teacherNo) throws DailyException {
		return ad.dailyAttendance(sqlSession,teacherNo);
	}

	@Override
	public ArrayList<Children> dailyAttendance1(int teacherNo) throws DailyException {
		return ad.dailyAttendance1(sqlSession,teacherNo);
	}
	
	@Override
	public ArrayList<Children> dailyAttendance12(int teacherNo) throws DailyException {
		return ad.dailyAttendance12(sqlSession,teacherNo);
	}
	
	@Override
	public ArrayList<Children> dailyAttendance2(int teacherNo) throws DailyException {
		return ad.dailyAttendance2(sqlSession,teacherNo);
	}

	@Override
	public ArrayList<Children> monthAttendance(int teacherNo) throws DailyException {
		return ad.monthAttendance(sqlSession,teacherNo);
	}

	@Override
	public ArrayList<Children> monthAttendance1(int teacherNo) throws DailyException {
		return ad.monthAttendance1(sqlSession,teacherNo);
	}

	@Override
	public int dailyChildrenCount(int teacherNo) throws DailyException {
		return ad.dailyChildrenCount(sqlSession,teacherNo);
	}
	
	@Override
	public int dailyChildrenCount1(int teacherNo) throws DailyException {
		return ad.dailyChildrenCount1(sqlSession,teacherNo);
	}

	@Override
	public int dailyChildrenCount12(int teacherNo) throws DailyException {
		return ad.dailyChildrenCount12(sqlSession,teacherNo);
	}
	@Override
	public int dailyChildrenCount2(int teacherNo) throws DailyException {
		return ad.dailyChildrenCount2(sqlSession,teacherNo);
	}

	@Override
	public int insertDailyAtt(Attendance atten) throws DailyException {
		return ad.insertDailyAtt(sqlSession,atten);
	}


	@Override
	public int countDailyAtt(Attendance atten) {
		return ad.countDailyAtt(sqlSession,atten);
	}


	@Override
	public int updateDailyAtt(Attendance atten) {
		return ad.updateDailyAtt(sqlSession,atten);
	}


	



}
