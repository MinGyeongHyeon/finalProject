package com.kh.fp.schedule.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.schedule.model.dao.ScheduleDao;
import com.kh.fp.schedule.model.vo.Schedule;

@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ScheduleDao scd;

	@Override
	public int insertSchedule(Schedule s) {
		int result = scd.insertSchedule(sqlSession, s);
		return result;
	}
	
}
