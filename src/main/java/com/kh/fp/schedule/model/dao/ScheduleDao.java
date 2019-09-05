package com.kh.fp.schedule.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.schedule.model.vo.Schedule;

public interface ScheduleDao {

	int insertSchedule(SqlSessionTemplate sqlSession, Schedule s);

}
