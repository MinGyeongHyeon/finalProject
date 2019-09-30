package com.kh.fp.attendance.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.vo.Attendance;
import com.kh.fp.attendance.model.vo.Children;

public interface AttendanceDao {


	ArrayList<Children> dailyAttendance(SqlSessionTemplate sqlSession, int teacherNo) throws DailyException;

	ArrayList<Children> monthAttendance(SqlSessionTemplate sqlSession,int teacherNo) throws DailyException;

	int dailyChildrenCount(SqlSessionTemplate sqlSession,int teacherNo) throws DailyException;

	int insertDailyAtt(SqlSessionTemplate sqlSession, Attendance atten) throws DailyException;

	int countDailyAtt(SqlSessionTemplate sqlSession, Attendance atten);

	int updateDailyAtt(SqlSessionTemplate sqlSession, Attendance atten);

}
