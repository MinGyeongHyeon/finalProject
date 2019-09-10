
package com.kh.fp.common;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.fp.member.model.vo.Member;


@Controller
public class PageLinkServlet {
	



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
	public String mainView() {

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
	 public String homeworkSelectPeople() {

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
}

