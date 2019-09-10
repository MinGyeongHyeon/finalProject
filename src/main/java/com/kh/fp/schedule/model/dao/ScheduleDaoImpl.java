package com.kh.fp.schedule.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.schedule.model.vo.KinderClass;
import com.kh.fp.schedule.model.vo.Schedule;

@Repository
public class ScheduleDaoImpl implements ScheduleDao{

	@Override
	public KinderClass findClassNo(SqlSessionTemplate sqlSession, KinderClass kc) {
		KinderClass fkc = null;
		
		fkc = sqlSession.selectOne("Schedule.findClassNo", kc);
		
		return fkc;
	}

	@Override
	public int insertSchedule1(SqlSessionTemplate sqlSession, Schedule sc) {
		
		int result = 0;
		
		System.out.println("DAO"+ sc);
		
		
			result = sqlSession.insert("Schedule.insertSchedule1", sc);
		
		return result;
	}

}
