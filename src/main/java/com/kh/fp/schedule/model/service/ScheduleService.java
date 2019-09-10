package com.kh.fp.schedule.model.service;

import com.kh.fp.schedule.model.vo.KinderClass;
import com.kh.fp.schedule.model.vo.Schedule;

public interface ScheduleService {

	int insertSchedule1(Schedule s) ;

	KinderClass findClassNo(KinderClass kc);

}
