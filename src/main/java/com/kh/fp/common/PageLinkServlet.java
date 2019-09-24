
package com.kh.fp.common;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.member.model.service.MemberService;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.member.model.vo.OnOff;


@Controller
@SessionAttributes("of")
public class PageLinkServlet {

	@Autowired
	private MemberService ms;



	@RequestMapping(value="loginPage.pl")
	public String loginPage() {


		return "account/join5";
	}


	@RequestMapping(value="joinHome.pl")
	public String joinHome() {


		return "account/join1";

	}

	@RequestMapping(value="joinPage2.pl")
	public String JoinPage2() {


		return "account/join2";
	}


	@RequestMapping(value="joinPage3.pl")
	public String joinPage3(Member m , Model model) {


		model.addAttribute("m" , m);

		return "account/join3";
	}

	@RequestMapping(value="joinPage4.pl")
	public String joinPage4(Member m , Model model) {


		model.addAttribute("m" , m);

		return "account/join4";
	}


	@RequestMapping(value="writeSchedule.pl")
	public String writeSchedule() {

		return "schedule/writeSchedule";
	}


	@RequestMapping(value="drugMainView.pl")
	public String drugMainView() {

		return "drugRequest/drugRequestList";
	}

	@RequestMapping(value="main.pl")
	public String mainView(@SessionAttribute(value="loginUser") Member loginUser , Model model) {

		if(loginUser.getClassification().equals("원장님")) {

			int childrenCount = ms.childrenCount(loginUser);
			int teacherCount = ms.teacherCount(loginUser);
			int childrenCountN = ms.childrenCountN(loginUser);
			int teacherCountN = ms.teacherCountN(loginUser);

			model.addAttribute("childrenCount", childrenCount);
			model.addAttribute("teacherCount",teacherCount);
			model.addAttribute("childrenCountN", childrenCountN);
			model.addAttribute("teacherCountN",teacherCountN);

		}else if(loginUser.getClassification().equals("선생님")) {

				int childrenCount = ms.childrenCount(loginUser);
				int childrenCountN = ms.childrenCountN(loginUser);

				model.addAttribute("childrenCount", childrenCount);
				model.addAttribute("childrenCountN", childrenCountN);

		}


		return "main/parentsMain";
	}

	@RequestMapping(value="drugDetailList.pl")
	public String drugDetailView() {

		return "drugRequest/drugRequestDetail";
	}

	@RequestMapping(value="writeMediReport.pl")
	public String writeMediReport() {

		return "drugRequest/drugReportWrite";
	}

	@RequestMapping(value="drugRequestWrite.pl")
	public String drugRequestWrite() {

		return "drugRequest/drugRequestWrite";
	}


	@RequestMapping(value="businessLogMain.pl")
	public String businessLogMain() {

		return "businessLog/businessLogList";
	}

	@RequestMapping(value="noteMain.pl")
	public String noteMain() {

		return "note/noteMain";
	}

	/*
	 * @RequestMapping(value="homeworklist.pl") public String sendNote() {
	 *
	 * return "note/sendNote"; }
	 */

	@RequestMapping(value="sendNote.pl")
	public String sendNote() {

		return "note/sendNote";
	}

	@RequestMapping(value="sentNoteBox.pl")
	public String sentNoteBox() {

		return "note/sentNoteBox";
	}


	@RequestMapping(value="Announcement.pl")
	public String Announcement() {

		return "homeworkDiary/homeworkDiaryList";
	}


	@RequestMapping(value="WriteIndi.pl")
	public String WriteIndi() {

		return "homeworkDiary/homeworkIndividualWrite";
	}


	@RequestMapping(value="WriteAnnounce.pl")
	public String WriteAnnounce() {

		return "homeworkDiary/homeworkDiaryWrite";
	}


	@RequestMapping(value="test.pl")
	public String test() {
		return "attendance/test";
	}


	 @RequestMapping(value="DetailHomeWork.pl")
	 public String DetailHomeWork() {
	  return "homeworkDiary/homeworkDetail";
	  }

	 @RequestMapping(value="WriteSomeoneHomeWork.pl")
	 public String WriteSomeoneHomeWork() {
	  return "homeworkDiary/homeworkIndividualWrite";
	  }

	 @RequestMapping(value="findid.pl")
	 public String findid() {


		 return "join/findId";
	 }


	 @RequestMapping(value="homeworkSelectPeople.pl")
	 public String homeworkSelectPeople(HttpSession session,HttpServletRequest request ) {
		 Member loginUser = (Member)session.getAttribute("loginUser");
		 int memberId = loginUser.getUserNo();


		 return "homeworkDiary/homeworkSelectPeople";
	 }


	 @RequestMapping(value="Notice.pl")
	 public String Notice() {
		 return "notice/NoticeList";
	 }

	 @RequestMapping(value="NoticeWrite.pl")
	 public String NoticeWrite() {
		 return "notice/NoticeWrite";
	 }


	 @RequestMapping(value="DetailNotice.pl")
	 public String DetailNotice() {
		 return "notice/DetailNotice";
	 }

	 @RequestMapping(value="findpwd.pl")
	 public String FindPwd() {

		 return "join/findPwd";
	 }

	@RequestMapping(value="findPwd2.pl")
	public String findPwd2(String userId , Model model) {

		model.addAttribute("userId",userId);

		return "join/findPwd2";
	}
	@RequestMapping(value="findPwd3.pl")
	public String findPwd3(String selectId , Model model) {

		model.addAttribute("selectId",selectId);

		return "join/findPwd3";
	}



	@RequestMapping(value="introduceService.pl")
	public String introduceservice() {
		return "main/introduceService";
	}

	@RequestMapping(value="writeDailyLog.pl")
	public String writeDailyLog() {
		return "businessLog/writeDailyLog";
	}
	
	@RequestMapping(value="MyPage.pl")
	public String myPage() {
		
		
		return "member/MyPage";
	}
	
	

}

