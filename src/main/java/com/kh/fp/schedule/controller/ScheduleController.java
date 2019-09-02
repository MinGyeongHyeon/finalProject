package com.kh.fp.schedule.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ScheduleController {
	
	@RequestMapping(value="scheduleMain.sc")
	public String scheduleMain() {
		
		return "schedule/scheduleMain";
	}
	
	
	
	
	
	
	
}
