package com.kh.fp.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView insertSchedule(ModelAndView mv,Schedule s) {
		System.out.println(s);
		mv.setViewName("jsonView");
		return mv;
	}
	
	
	
	
	
}
