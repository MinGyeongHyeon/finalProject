package com.kh.fp.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.fp.schedule.model.service.ScheduleService;
import com.kh.fp.schedule.model.vo.Schedule;

@Controller
public class ScheduleController {
	
	
	@Autowired
	private ScheduleService scs;
	
	@RequestMapping(value="scheduleMain.sc")
	public String scheduleMain() {
		
		return "schedule/scheduleMain";
	}
	
	@RequestMapping(value="insertSchedule.sc")
	public String insertSchedule(Schedule s) {
		
		int result;
		
		result = scs.insertSchedule(s);
		
		return "";
	}
	
	
	
	
	
}
