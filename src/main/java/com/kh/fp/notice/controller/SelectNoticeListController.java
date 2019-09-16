package com.kh.fp.notice.controller;

import java.util.ArrayList;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tools.ant.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.common.Pagination;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.notice.model.service.NoticeService;
import com.kh.fp.notice.model.vo.Notice;
import com.kh.fp.notice.model.vo.NoticeWho;

@Controller
@SessionAttributes("loginUser")
public class SelectNoticeListController {

	@Autowired
	private NoticeService ns;
	
	@RequestMapping(value="NoticeList.sn")
	public String SelectNoticeList(Notice notice,NoticeWho noticeWho,Model model,HttpServletRequest request,HttpServletResponse response, @ModelAttribute("loginUser") Member loginUser) {

		int userNo = loginUser.getUserNo();
		String classNum1 = "";
		String kinderNum1 = "";
		String kinderName = "";
		
		ArrayList selectWho = ns.selectWho(userNo);
		NoticeWho baby = (NoticeWho)selectWho.get(0);
		System.out.println(baby+"kkk");
		
		int classNum = baby.getClassNum();
		int kinderNum = baby.getKinderNum();
		 
		noticeWho.setClassNum(classNum);
		noticeWho.setKinderNum(kinderNum);

		System.out.println(selectWho);

		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = ns.getListCount(noticeWho);
			
		System.out.println(listCount + "개");
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		noticeWho.setUserNum(loginUser.getUserNo());
		
		ArrayList<Notice> list = ns.selectProjectList(pi,noticeWho);
		
		System.out.println("컨트롤러"+list);
		
		model.addAttribute("list",list);
		
		
		return "notice/NoticeList";
	}
	
	
}



























