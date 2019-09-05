package com.kh.fp.attendance.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.vo.Children;

@Repository
public class AttendanceDaoImpl implements AttendanceDao{

	@Override
	public ArrayList<Children> dailyAttendance(SqlSessionTemplate sqlSession) throws DailyException {
		ArrayList<Children> dailyatt = null;
		dailyatt = (ArrayList)sqlSession.selectList("Attendance.dailyatt");
		if(dailyatt == null) {
			throw new DailyException("정보조회실패!");
		}
		return dailyatt;
	}



}
