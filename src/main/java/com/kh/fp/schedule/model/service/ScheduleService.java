package com.kh.fp.schedule.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.fp.schedule.model.vo.KinderClass;
import com.kh.fp.schedule.model.vo.Schedule;

public interface ScheduleService {

	int insertSchedule1(Schedule s) ;

	KinderClass selectKinderClass(KinderClass kc);

	int insertSchedule2(Schedule sc);

	ArrayList<Schedule> searchSchedule();

}
