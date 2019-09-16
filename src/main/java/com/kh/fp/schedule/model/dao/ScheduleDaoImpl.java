package com.kh.fp.schedule.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.schedule.model.vo.KinderClass;
import com.kh.fp.schedule.model.vo.Schedule;

@Repository
public class ScheduleDaoImpl implements ScheduleDao{

	@Override
	public KinderClass selectKinderClass(SqlSessionTemplate sqlSession, KinderClass kc) {
		KinderClass selectKc = null;
		selectKc = sqlSession.selectOne("Schedule.selectKinderClass", kc);
		
		return selectKc;
	}

	@Override
	public int insertSchedule1(SqlSessionTemplate sqlSession, Schedule sc) {
		
		int result = 0;
			
		
		
			result = sqlSession.insert("Schedule.insertSchedule1", sc);
		
		return result;
	}
	
	
	@Override
	public int insertSchedule2(SqlSessionTemplate sqlSession, Schedule sc) {
		
		int result = 0;
		
		System.out.println("DAO"+ sc);
		
		
			result = sqlSession.insert("Schedule.insertSchedule2", sc);
		
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Schedule> searchSchedule(SqlSessionTemplate sqlSession) {
		/*
		 * RowBounds rowBounds = new RowBounds(0, 999); ArrayList<Schedule> list =
		 * (ArrayList) sqlSession.selectList("Schedule.searchSchedule", null,
		 * rowBounds);
		 */
		
		ArrayList<Schedule> list = (ArrayList) sqlSession.selectList("Schedule.searchSchedule");
		System.out.println("list출력" + list);
		
		return list; 
	}
}
