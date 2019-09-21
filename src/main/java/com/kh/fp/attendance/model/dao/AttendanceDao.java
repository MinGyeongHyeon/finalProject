package com.kh.fp.attendance.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.vo.Children;

public interface AttendanceDao {


	ArrayList<Children> dailyAttendance(SqlSessionTemplate sqlSession) throws DailyException;

	ArrayList<Children> monthAttendance(SqlSessionTemplate sqlSession) throws DailyException;

	int dailyChildrenCount(SqlSessionTemplate sqlSession) throws DailyException;

}
