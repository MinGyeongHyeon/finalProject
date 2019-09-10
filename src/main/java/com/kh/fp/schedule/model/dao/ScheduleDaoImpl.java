package com.kh.fp.schedule.model.dao;

import java.util.HashMap;

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

	@Override
	public HashMap<Schedule, Object> searchSchedule(SqlSessionTemplate sqlSession) {
		//HashMap<Schedule, Object> array = (HashMap<Schedule, Object>)sqlSession.selectmap
		return null;
	}
//("Schedule.searchSchedule");
}
