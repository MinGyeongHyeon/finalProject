package com.kh.fp.schedule.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.schedule.model.vo.KinderClass;
import com.kh.fp.schedule.model.vo.Schedule;

public interface ScheduleDao {

	KinderClass findClassNo(SqlSessionTemplate sqlSession, KinderClass kc);

	int insertSchedule1(SqlSessionTemplate sqlSession, Schedule s);

}
