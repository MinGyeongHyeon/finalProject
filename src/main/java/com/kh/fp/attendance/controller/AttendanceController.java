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
import com.kh.fp.attendance.model.vo.Children;

import net.sf.json.JSONObject;


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
				System.out.println(dayAtt);
				mv.addAttribute("list", dayAtt);
				return "attendance/attendanceMain";
			} catch (DailyException e) {
				mv.addAttribute("msg",e.getMessage());
				return "common/errorPage";
			}
			
			
			
			
			
		}
	
	@RequestMapping(value="month.at")//월별출석부
	public String monthAtt() {
		
		
		return "";
	}
	
	@RequestMapping(value="changeAttendance.at")
	public String changeAttendance(String date,HttpServletResponse rs, Model model) {
		/* 특정 날짜 출석부 */
		rs.setContentType("text/html;charset=utf-8");
		JSONObject jso = new JSONObject();
		
		System.out.println(date);
		System.out.println("나오세요~");
		return "attendance/attendanceMain";
	}
	
}
