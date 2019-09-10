package com.kh.fp.schedule.model.service;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.schedule.model.dao.ScheduleDao;
import com.kh.fp.schedule.model.vo.KinderClass;
import com.kh.fp.schedule.model.vo.Schedule;

@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ScheduleDao scd;

	@Override
	public KinderClass selectKinderClass(KinderClass kc) {
		KinderClass selectKc = scd.selectKinderClass(sqlSession, kc);
		
		return selectKc;
	}

	@Override
	public int insertSchedule1(Schedule sc){
		int result = scd.insertSchedule1(sqlSession, sc);
		
		return result;
	}

	@Override
	public int insertSchedule2(Schedule sc){
		int result = scd.insertSchedule2(sqlSession, sc);
		
		return result;
	}


	@Override
	public HashMap<Schedule, Object> searchSchedule() {
		HashMap<Schedule, Object> array = scd.searchSchedule(sqlSession);
		
		return array;
	}



	
	
}
