package com.kh.fp.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.notice.model.exception.NoticeException;
import com.kh.fp.notice.model.service.NoticeService;
import com.kh.fp.notice.model.vo.Notice;

@Controller
@SessionAttributes("loginUser")
public class NoticeController {
	
	@Autowired
	private NoticeService ns;
	
	
	@RequestMapping(value="NoticeWrite.no")
	public String NoticeWrite(Notice n, Model mode,HttpSession session) {
		
		KinGardenClasses loginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		int userNo = loginUser.getTeacherNo();
		
		n.setBoardtype("공지사항");
		n.setWriter(userNo);
	
		System.out.println("컨트롤러"+n);
		 
		try {
			String insertNotice = ns.insertNotice(n);
			
			return "redirect:NoticeList.sn";
			
		} catch (NoticeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "notice/NoticeList";
	}
	
	@RequestMapping(value="NoticeOne.no")
	public String NoticeOne(Notice n,Model model,HttpServletRequest request, HttpServletResponse response) {
		
		int bid = Integer.parseInt(request.getParameter("bid"));
		
		try {
			Notice SelectNotice = ns.selectNotice(bid);
			System.out.println(SelectNotice + "입니다.");
			model.addAttribute("SelectNotice",SelectNotice);

		} catch (NoticeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "notice/NoticeDetail";
		
	}
	
	@RequestMapping(value="delectNotice.no")
	public String Noticedelete(Notice n,Model model,HttpServletRequest request, HttpServletResponse response) {
		
		int bid = Integer.parseInt(request.getParameter("bid"));
		
		String status = "Y";
	
		int result = ns.UpdateNoticeStatus(bid,status);
		
		
		return "redirect:NoticeList.sn";
		
	}
	
	
}
