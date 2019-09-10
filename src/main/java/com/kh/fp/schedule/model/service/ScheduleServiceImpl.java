package com.kh.fp.schedule.model.service;

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
	public KinderClass findClassNo(KinderClass kc) {
		KinderClass fkc = scd.findClassNo(sqlSession, kc);
		
		return fkc;
	}
	
	
	
	@Override
	public int insertSchedule1(Schedule sc){
		int result = scd.insertSchedule1(sqlSession, sc);
		
		return result;
	}

	
	
}
