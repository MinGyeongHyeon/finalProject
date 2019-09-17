package com.kh.fp.attendance.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.service.AttendanceService;
import com.kh.fp.attendance.model.vo.Attendance;
import com.kh.fp.attendance.model.vo.Children;


@Controller
@SessionAttributes("loginUser")

public class AttendanceController {

	@Autowired
	private AttendanceService as;

	 @RequestMapping(value="attendance.at")
		public String attendanceView(Model mv,Children att){
		/* 오늘 날짜 출석부 */
			Date today = new Date();
			SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
			String day = date.format(today);
			((Model) mv).addAttribute("day",day);

			try {
				ArrayList<Children> dayAtt = as.dailyAttendance();
				mv.addAttribute("list", dayAtt);
				return "attendance/attendanceMain";
			} catch (DailyException e) {
				mv.addAttribute("msg",e.getMessage());
				return "common/errorPage";
			}


		}

	@RequestMapping(value="month.at")//월별출석부
	public String monthAtt(Model model,Children att) {
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String day = date.format(today);
		model.addAttribute("day", day);

		int month = Integer.parseInt(day.substring(5,7));
		if(month==2) {
			model.addAttribute("month",28);
			
			
		}else if(month == 1||month == 3||month == 5||month == 7||month==8||month==10||month==12) {
			model.addAttribute("month",31);
			
		}else {
			model.addAttribute("month",30);
		}
		try {
			ArrayList<Children> childList = as.monthAttendance();
			int hmc = childList.size()*3+1;
			model.addAttribute("list",childList);
			model.addAttribute("hmc",hmc);
			return "attendance/monthAttendance";
		} catch (DailyException e) {
			model.addAttribute("msg",e.getMessage());
			return "common/errorPage";
		}

	}

	@RequestMapping(value="changeAttendance.at")
	public String changeAttendance(String time,HttpServletResponse rs, Model model) {
		/* 특정 날짜 출석부 */

		System.out.println(time);
		System.out.println("나오세요~");
		return "attendance/attendanceMain";
	}

	@RequestMapping(value="attendanceMain.at")
	public String attendanceMain(Attendance att,Model model) {
		System.out.println(att.getChildrenNo());
		System.out.println(att.getStatus());
		return "";
	}
}
