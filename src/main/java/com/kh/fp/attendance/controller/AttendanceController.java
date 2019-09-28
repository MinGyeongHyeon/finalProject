package com.kh.fp.attendance.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.service.AttendanceService;
import com.kh.fp.attendance.model.vo.Attendance;
import com.kh.fp.attendance.model.vo.Children;
import com.kh.fp.member.model.vo.KinGardenClasses;


@Controller
@SessionAttributes("loginUser")

public class AttendanceController {

	@Autowired
	private AttendanceService as;

	 @RequestMapping(value="attendance.at")
		public String attendanceView(Model mv,Children att,HttpSession session,HttpServletRequest request){
		/* 오늘 날짜 출석부 */
		 
		 KinGardenClasses loginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		 int teacherNo = loginUser.getTeacherNo();
		 String today2 = request.getParameter("day");
		 String today4 = request.getParameter("day1");
		 
			Date today = new Date();
			SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
			String day = date.format(today);
			if(today2 !=null) {
				mv.addAttribute("day",today2);
				String newday = today2.substring(0, 8);
				 String newday2 = today2.substring(11);
				 if(newday2.length()==1) {
					 String newday3 = newday+0+newday2;
					 System.out.println(newday3);
					 mv.addAttribute("day",newday3);
				 }else {
					 String newday3 = newday + newday2;
					 mv.addAttribute("day",newday3);
				 }
			}else if(today4 !=null){
				mv.addAttribute("day",today4);
			}else {
				mv.addAttribute("day",day);
				
			}
			
			try {
				ArrayList<Children> dayAtt = as.dailyAttendance(teacherNo);
				int child = as.dailyChildrenCount(teacherNo);
				mv.addAttribute("list", dayAtt);
				mv.addAttribute("chldren",child);
				
				return "attendance/attendanceMain";
			} catch (DailyException e) {
				mv.addAttribute("msg",e.getMessage());
				return "common/errorPage";
			}


		}
	 
	 @RequestMapping(value="ajaxattendance.at", method=RequestMethod.POST)
	 @ResponseBody
	 public ModelAndView changeAtt(ModelAndView mv,Children att,HttpServletRequest request) {
		 System.out.println("와우~!");
		 String abc = request.getParameter("Abc");
		 mv.setViewName("jsonView");
			return mv;
	 }
	 
	 @RequestMapping(value="test.at")
	 public String testAtt() {
		 return "attendance/testtest";
	 }

	@RequestMapping(value="month.at")//월별출석부
	public String monthAtt(Model model,Children att,HttpSession session) {
		KinGardenClasses loginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		 int teacherNo = loginUser.getTeacherNo();
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String day = date.format(today);
		model.addAttribute("day", day);

		int month = Integer.parseInt(day.substring(5,7));
		if(month==2) {
			model.addAttribute("month",28);
			model.addAttribute("month1",56);
			
		}else if(month == 1||month == 3||month == 5||month == 7||month==8||month==10||month==12) {
			model.addAttribute("month",31);
			model.addAttribute("month1",62);
		}else {
			model.addAttribute("month",30);
			model.addAttribute("month1",60);
		}
		try {
			ArrayList<Children> childList = as.monthAttendance(teacherNo);
			int hmc = childList.size()*3;
			int twice = hmc*3;
			
			model.addAttribute("list",childList);
			model.addAttribute("hmc",hmc);
			model.addAttribute("tt",twice);
			return "attendance/monthAttendance";
		} catch (DailyException e) {
			model.addAttribute("msg",e.getMessage());
			return "common/errorPage";
		}

	}

	@RequestMapping(value="changeAttendance.at")
	public String changeAttendance(@ModelAttribute Attendance att,ModelMap model,
			Children child,HttpSession session,HttpServletRequest request) {
		/* 특정 날짜 출석부 */
		String day = request.getParameter("day");
		System.out.println(day);
		System.out.println(att);
		Attendance atten = null;
		String[] childrenNo1 = att.getChildrenNo1().split(",");
		String[] time = att.getTime().split(",");
		String[] mTime = att.getmTime().split(",");
		String[] status = att.getStatus().split(",");
		for(int i=0; i<att.getStatus().length(); i++) {
			atten = new Attendance();
			atten.setChildrenNo(Integer.parseInt(childrenNo1[i]));
			atten.setTime(time[i]+day);
			atten.setmTime(mTime[i]+day);
			atten.setStatus(status[i]);
			if(!status[i].equals("")) {
				switch(status[i]) {
				case "V" : atten.setStatus("출석");break;
				case "×" : atten.setStatus("결석");break;
				case "◎" : atten.setStatus("병결");break;
				case "○" : atten.setStatus("사고");break;
				case "/" : atten.setStatus("입소");break;
				case "★" : atten.setStatus("퇴소");break;
				}
				if(status[i].equals("V")||status[i].equals("/")||status[i].equals("★")) {
					atten.setAttendancceYN("출석");
					
				}else {
					atten.setAttendancceYN("결석");
					
				}
				try {
					int insertAtt = as.insertDailyAtt(atten);
				} catch (DailyException e) {
					e.printStackTrace();
				}
				
			}
		}
		
		return "";
	}

	
	  @RequestMapping(value="attendanceMain.at") 
	  public String attendanceMain(Attendance att,Model model,HttpSession session,HttpServletRequest request) {
	  System.out.println("애기번호"+att.getChildrenNo()); 
	  System.out.println("상태"+att.getStatus()); 
	  System.out.println("등원시간"+att.getTime());
	  System.out.println("하원시간"+att.getmTime());
	  return ""; 
	  }
	 
	 
	
}
