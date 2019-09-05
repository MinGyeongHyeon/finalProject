package com.kh.fp.schedule.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.schedule.model.vo.Schedule;

@Repository
public class ScheduleDaoImpl implements ScheduleDao{

	@Override
	public int insertSchedule(SqlSessionTemplate sqlSession, Schedule s) {
		
		int result = 0;
		
		System.out.println(s);
		
		return 0;
	}

}
