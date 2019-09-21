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

	@Override
	public ArrayList<Children> monthAttendance(SqlSessionTemplate sqlSession) throws DailyException {
		ArrayList<Children> monthatt = null;
		monthatt = (ArrayList)sqlSession.selectList("Attendance.dailyatt");
		if(monthatt == null) {
			throw new DailyException("정보조회실패");
		}
		return monthatt;
	}

	@Override
	public int dailyChildrenCount(SqlSessionTemplate sqlSession) throws DailyException {
		int child = 0;
		child = sqlSession.selectOne("Attendance.dailyChildren");
		if(child==0) {
			throw new DailyException("원아가 없습니다.");
		}
		return child;
	}



}
