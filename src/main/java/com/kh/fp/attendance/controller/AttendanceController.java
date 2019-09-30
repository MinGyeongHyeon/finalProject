package com.kh.fp.attendance.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.attendance.model.exception.DailyException;
import com.kh.fp.attendance.model.service.AttendanceService;
import com.kh.fp.attendance.model.vo.Attendance;
import com.kh.fp.attendance.model.vo.Children;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.Member;


@Controller
@SessionAttributes("loginUser")
public class AttendanceController {

	@Autowired
	private AttendanceService as;

	@RequestMapping(value="attendance.at")
	public String attendanceView(Model mv,Children att,HttpSession session,HttpServletRequest request,@ModelAttribute("loginUser") Member loginUser) throws DailyException{
		/* 오늘 날짜 출석부 */

		KinGardenClasses teacherKing = (KinGardenClasses)session.getAttribute("teacherKing");
		KinGardenClasses user = (KinGardenClasses)session.getAttribute("childrenKing");

		String aaa = loginUser.getClassification();

		
		//int kinderNo = teacherKing.getKinderNo();
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String day = date.format(today);
		
		String today2 = request.getParameter("day");//일별 출석부 데이트피커
		String today4 = request.getParameter("day1");//월별 출석부 데이트피커
		
		
		
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

		if(aaa.equals("학부모")) {
			return "";
		}else if(aaa.equals("원장님")) {
			int userNo = loginUser.getUserNo();
			ArrayList<Children> dayAtt = as.dailyAttendance1(userNo);
			System.out.println(userNo);
			int child=as.dailyChildrenCount1(userNo);
			mv.addAttribute("list", dayAtt);
			mv.addAttribute("chldren",child);
			return "attendance/attendanceMain";
		}else {
			int teacherNo = teacherKing.getTeacherNo();
			ArrayList<Children> dayAtt = as.dailyAttendance(teacherNo); 
			int child =	as.dailyChildrenCount(teacherNo); 
			mv.addAttribute("list", dayAtt);
			mv.addAttribute("chldren",child);
			return "attendance/attendanceMain"; 
		}
		
		
	}


	@RequestMapping(value="test.at")
	public String testAtt() {
		return "attendance/testtest";
	}

	@RequestMapping(value="month.at")//월별출석부
	public String monthAtt(Model model,Children att,HttpSession session,@ModelAttribute("loginUser") Member loginUser) {
		KinGardenClasses loginUser1 = (KinGardenClasses)session.getAttribute("teacherKing");
		
		KinGardenClasses user = (KinGardenClasses)session.getAttribute("childrenKing");
		System.out.println(loginUser);

		String aaa = loginUser.getClassification();
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
			ArrayList<Children> childList;
			if(aaa.equals("원장님")) {
				int userNo = loginUser.getUserNo();
				childList = as.monthAttendance1(userNo);
				
			}else if(aaa.equals("학부모")){
				return "";
			}else {
				int teacherNo = loginUser1.getTeacherNo();
				childList = as.monthAttendance(teacherNo);
			}
			
			
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

	//   @RequestMapping(value="changeAttendance.at")
	//   public String changeAttendance(@ModelAttribute Attendance att,ModelMap model,
	//         Children child,HttpSession session,HttpServletRequest request) {
	//      /* 특정 날짜 출석부 */
	//      String day = request.getParameter("day");
	//      Attendance atten = null;
	//      String[] childrenNo1 = att.getChildrenNo1().split(",");
	//      String[] time = att.getTime().split(",");
	//      String[] mTime = att.getmTime().split(",");
	//      String[] status = att.getStatus().split(",",-1);
	//      
	//      
	//      if(att.getStatus().length()==status.length) {
	//      for(int i=0; i<att.getStatus().length(); i++) {
	//         if(!status[i].equals("")) {
	//         atten = new Attendance();
	//         int a = Integer.parseInt(childrenNo1[i].toString());
	//         atten.setChildrenNo(a);
	//         if(time[i].equals("시간을 선택하세요.")||mTime[i].equals("시간을 선택하세요.")) {
	//            atten.setTime("없음");
	//            atten.setmTime("없음");
	//         }else {
	//         atten.setTime(time[i]);
	//         atten.setmTime(mTime[i]);
	//         }
	//         atten.setStatus(status[i]);
	//         if(day!=null) {
	//            atten.setDate(day);
	//         }else {
	//            Date today = new Date();
	//            SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	//            String day1 = date.format(today);
	//            atten.setDate(day1);
	//         }
	//         
	//            switch(status[i]) {
	//            case "V" : atten.setStatus("출석");break;
	//            case "×" : atten.setStatus("결석");break;
	//            case "◎" : atten.setStatus("병결");break;
	//            case "○" : atten.setStatus("사고");break;
	//            case "/" : atten.setStatus("입소");break;
	//            case "★" : atten.setStatus("퇴소");break;
	//            }
	//            if(status[i].equals("V")||status[i].equals("/")||status[i].equals("★")) {
	//               atten.setAttendanceYN("출석");
	//               
	//            }else {
	//               atten.setAttendanceYN("결석");
	//               
	//            }
	//            try {
	//               System.out.println("atten"+atten);
	//               int countatt = as.countDailyAtt(atten);
	//               System.out.println(countatt);
	//               if(countatt<=0) {
	//                  int insertAtt = as.insertDailyAtt(atten);
	//               }else {
	//                  int updateAtt = as.updateDailyAtt(atten);
	//               }
	//               System.out.println("입력되는곳"+atten);
	//            } catch (DailyException e) {
	//               e.printStackTrace();
	//            }
	//            
	//         }else {
	//            continue;
	//         }
	//      }
	//      }
	//      
	//      return "";
	//   }

	@RequestMapping(value="changeAttendance.at")
	public String changeAttendance(@ModelAttribute Attendance att,ModelMap model,
			Children child,HttpSession session,Model mv,HttpServletRequest request,@ModelAttribute("loginUser") Member loginUser) throws DailyException {
		/* 특정 날짜 출석부 */
		KinGardenClasses teacherKing = (KinGardenClasses)session.getAttribute("teacherKing");
		KinGardenClasses user = (KinGardenClasses)session.getAttribute("childrenKing");

		String aaa = loginUser.getClassification();
		String day = request.getParameter("day");
		Attendance atten;
		String[] childrenNo1 = att.getChildrenNo1().split(",");
		String[] time = att.getTime().split(",");
		String[] mTime = att.getmTime().split(",");
		String[] status = att.getStatus().split(",",-1);

		int x = att.getStatus().length();
		if(att.getStatus().length()>status.length) {
			x = x-1;
		}
		int countatt;
		ArrayList<Attendance> list = new ArrayList<Attendance>();
		ArrayList<Children> clist;
			for(int i=0; i<x; i++) {
				atten = new Attendance();
				atten.setChildrenNo(Integer.parseInt(childrenNo1[i]));
				if(time[i].equals("시간을 선택하세요.")||mTime[i].equals("시간을 선택하세요.")) {
					atten.setTime("없음");
					atten.setmTime("없음");
				}else {
					atten.setTime(time[i]);
					atten.setmTime(mTime[i]);
				}
				atten.setStatus(status[i]);
				if(day!=null) {
					atten.setDate(day);
				}else {
					Date today = new Date();
					SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
					String day1 = date.format(today);
					atten.setDate(day1);
				}
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
						atten.setAttendanceYN("출석");

					}else {
						atten.setAttendanceYN("결석");

					}
					try {
						countatt = as.countDailyAtt(atten);
						if(countatt<=0) {
							int insertAtt = as.insertDailyAtt(atten);
						}else {
							int updateAtt = as.updateDailyAtt(atten);
						}
					} catch (DailyException e) {
						e.printStackTrace();
					}

				}
				list.add(atten);
				
				String today2 = request.getParameter("day");//일별 출석부 데이트피커
				String today4 = request.getParameter("day1");//월별 출석부 데이트피커
				
				
				
//				if(today2 !=null) {
//					mv.addAttribute("day",today2);
//					String newday = today2.substring(0, 8);
//					String newday2 = today2.substring(11);
//					if(newday2.length()==1) {
//						String newday3 = newday+0+newday2;
//						System.out.println(newday3);
//						mv.addAttribute("day",newday3);
//					}else {
//						String newday3 = newday + newday2;
//						mv.addAttribute("day",newday3);
//					}
//				}else if(today4 !=null){
//					mv.addAttribute("day",today4);
//				}else {
//					mv.addAttribute("day",day);
//
//				}
//				if(aaa.equals("학부모")) {
//					return "";
//				}else if(aaa.equals("원장님")) {
//					int userNo = loginUser.getUserNo();
//					clist = as.dailyAttendance12(userNo);
//					System.out.println(userNo);
//					int child1=as.dailyChildrenCount12(userNo);
//					mv.addAttribute("list", clist);
//					mv.addAttribute("chldren",child1);
//				//	return "attendance/attendanceMain";
//				}else {
//					int teacherNo = teacherKing.getTeacherNo();
//					clist = as.dailyAttendance2(teacherNo); 
//					int child1 =	as.dailyChildrenCount2(teacherNo); 
//					mv.addAttribute("list", clist);
//					mv.addAttribute("chldren",child1);
//					//return "attendance/attendanceMain"; 
//				}

			}
			System.out.println("거시기"+list);
			mv.addAttribute("list",list);
		return "attendance/attendanceMain2";
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