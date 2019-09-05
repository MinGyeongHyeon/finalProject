package com.kh.fp.attendance.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AttendanceController {

	 @RequestMapping(value="attendance.at")
		public String attendanceView(Model model) {
			Date today = new Date();
			SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
			String day = date.format(today);
			model.addAttribute("day",day);
			
			return "attendance/attendanceMain";
		}
	
	@RequestMapping(value="month.at")//월별출석부
	public String monthAtt() {
		return "";
	}
	
	@RequestMapping(value="changeAttendance.at")
	public String changeAttendance(Model model) {
		/* String day = model.getA */
		return "attendance/attendanceMain";
	}
	
}
