package com.kh.fp.attendance.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.vo.Attendance;
import com.kh.fp.attendance.model.vo.Children;

@Repository
public class AttendanceDaoImpl implements AttendanceDao{

	@Override
	public ArrayList<Children> dailyAttendance(SqlSessionTemplate sqlSession,int teacherNo) throws DailyException {
		ArrayList<Children> dailyatt = null;
		dailyatt = (ArrayList)sqlSession.selectList("Attendance.dailyatt",teacherNo);
		if(dailyatt == null) {
			throw new DailyException("정보조회실패!");
		}
		return dailyatt;
	}

	@Override
	public ArrayList<Children> monthAttendance(SqlSessionTemplate sqlSession,int teacherNo) throws DailyException {
		ArrayList<Children> monthatt = null;
		monthatt = (ArrayList)sqlSession.selectList("Attendance.dailyatt",teacherNo);
		if(monthatt == null) {
			throw new DailyException("정보조회실패");
		}
		return monthatt;
	}

	@Override
	public int dailyChildrenCount(SqlSessionTemplate sqlSession,int teacherNo) throws DailyException {
		int child = 0;
		child = sqlSession.selectOne("Attendance.dailyChildren",teacherNo);
		if(child==0) {
			throw new DailyException("원아가 없습니다.");
		}
		return child;
	}

	@Override
	public int insertDailyAtt(SqlSessionTemplate sqlSession, Attendance atten) throws DailyException {
		int result = 0;
		result = sqlSession.insert("Attendance.insertDailyAtt", atten);
		if(result <=0) {
			throw new DailyException("출석부 입력 실패");
		}
		return result;
	}

	@Override
	public int countDailyAtt(SqlSessionTemplate sqlSession, Attendance atten) {
		int result = 0;
		result = sqlSession.selectOne("Attendance.countDailyAtt",atten);
		if(result<=0) {
			
		}
		return result;
	}

	@Override
	public int updateDailyAtt(SqlSessionTemplate sqlSession, Attendance atten) {
		int result = 0;
		result = sqlSession.update("Attendance.updateDailyAtt", atten);
		return result;
	}



}
