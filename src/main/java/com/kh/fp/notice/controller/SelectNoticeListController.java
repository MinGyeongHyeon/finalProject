package com.kh.fp.notice.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.notice.model.service.NoticeService;

@Controller
@SessionAttributes("loginUser")
public class SelectNoticeListController {

	@Autowired
	private NoticeService ns;
	
	@RequestMapping(value="NoticeList.sn")
	public String SelectNoticeList(HttpServletRequest request,HttpServletResponse response, @ModelAttribute("loginUser") Member loginUser) {

		int userNo = loginUser.getUserNo();
		
		ArrayList selectWho = ns.selectWho(userNo);
		
		System.out.println(selectWho);
		//int classNum = selectWho.indexOf(0);
		//int kinderNum = selectWho.indexOf(1);	
		
		//System.out.println("반번호"+classNum);
		//System.out.println("유치원번호"+kinderNum);
		
		int currentPage = 1;
		
		
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			
		}
			
		int listCount = ns.getListCount();
		
		
		
		
		
		return null;
	}
	
	
}
