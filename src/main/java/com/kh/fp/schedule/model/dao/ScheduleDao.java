package com.kh.fp.schedule.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.schedule.model.vo.KinderClass;
import com.kh.fp.schedule.model.vo.Schedule;

public interface ScheduleDao {

	int insertSchedule1(SqlSessionTemplate sqlSession, Schedule s);

	KinderClass selectKinderClass(SqlSessionTemplate sqlSession, KinderClass kc);

	int insertSchedule2(SqlSessionTemplate sqlSession, Schedule sc);

	HashMap<Schedule, Object> searchSchedule(SqlSessionTemplate sqlSession);

}
