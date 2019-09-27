package com.kh.fp.schedule.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.schedule.model.service.ScheduleService;
import com.kh.fp.schedule.model.vo.KinderClass;
import com.kh.fp.schedule.model.vo.Schedule;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scs;
	
	@RequestMapping(value="scheduleMain.sc")
	public String scheduleMain() {
	
		return "schedule/scheduleMain";
	}
	
	
	@RequestMapping(value="searchUserInfo.sc")
	public ModelAndView searchUserInfo(KinderClass kc, ModelAndView mv) {
		System.out.println("controller입장");
		System.out.println(kc);
		int result = 2;
		if(kc.getKinderNo() > 0) {
			result = 1;
		}
		mv.addObject("searchInfo", result);
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping(value="selectKinderClass.sc")
	public ModelAndView selectKinderClass(KinderClass kc, ModelAndView mv) {
		
		KinderClass selectKc = scs.selectKinderClass(kc);
		
		mv.addObject("selectKc", selectKc);
		mv.setViewName("jsonView");
		return mv;
	}

	@RequestMapping(value="insertSchedule1.sc")
	public ModelAndView insertSchedule1(Schedule sc,ModelAndView mv) {
		
		System.out.println(sc);
		
			int result = scs.insertSchedule1(sc);
			
		mv.addObject("insertsc", result);
		mv.setViewName("jsonView");
		return mv;
	}

	@RequestMapping(value="insertSchedule2.sc")
	public ModelAndView insertSchedule2(Schedule sc,ModelAndView mv) {
		
		System.out.println(sc);
		
			int result = scs.insertSchedule2(sc);
			
		mv.addObject("insertsc", result);
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping(value="searchSchedule.sc")
	public ModelAndView searchSchedule(ModelAndView mv) {
		ArrayList<Schedule> list = null;
		list = scs.searchSchedule();
		for(int i = 0; i < list.size(); i++) {
			Date sd = new Date();
			Date ed = new Date();
			System.out.println("list.get(i).getStart() : " + list.get(i).getStart() + " list.get(i).getEnd() : " + list.get(i).getEnd());
			try {
				if(list.get(i).getAllDay().equals("true")) {
					SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
					//java.sql.Date sqlsd = java.sql.Date.valueOf(list.get(i).getStart());
					//sd = new java.text.SimpleDateFormat("yyyyMMdd").parse(list.get(i).getStart());
					
					sd = format1.parse(list.get(i).getStart());
					ed = format1.parse(list.get(i).getEnd());

					System.out.println("sd1 ::: " + sd + "ed ::: " + ed);
				}else if(list.get(i).getAllDay().equals("false")) {
					SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
					
					sd = format2.parse(list.get(i).getStart());
					ed = format2.parse(list.get(i).getEnd());

					System.out.println("sd2 ::: " + sd + "ed ::: " + ed);
				}
				
				list.get(i).setStartDate(sd);
				list.get(i).setEndDate(ed);
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			System.out.println("시작시간 ::::" + list.get(i).getStart());
			
			
		}
		
		System.out.println("list == " + list);
		mv.addObject("list", list);
		mv.setViewName("jsonView");
		return mv;
	}


	
//	String  day = "2016-11-22"; // 형식을 지켜야 함
//	java.sql.Date d = java.sql.Date.valueOf(day);
//	■ String → java.sql.Timestamp 변환
//	 
//	String day = "2016-11-22 11:22:30.0"; // 형식을 지켜야 함
//	java.sql.Timestamp t = java.sql.Timestamp.valueOf(day);
//	 
//	 
//	■ String → java.util.Date 변환
//	 
//	String  day = "20161122"; // SimpleDateFormat 생성자에 전달되는 형식과 일치해야 함
//	java.util.Date d = new java.text.SimpleDateFormat("yyyyMMdd").parse(day);
//	 
//	 
//	■ java.util.Date → java.sql.Date 변환
//	 
//	java.util.Date u = new java.util.Date();
//	java.sql.Date s = new java.sql.Date(u.getTime());


	
	
	
}
