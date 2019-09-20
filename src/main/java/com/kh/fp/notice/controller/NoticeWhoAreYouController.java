package com.kh.fp.notice.controller;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.notice.model.service.NoticeService;
import com.kh.fp.notice.model.vo.Notice;

@Controller
@SessionAttributes("loginUser")
public class NoticeWhoAreYouController {

	
	@Autowired
	private NoticeService ns;
	
	@RequestMapping(value="NoticeWhoAreYou.no")
	public String NoticeWhoAreYou(Notice Who,Model model,@ModelAttribute("loginUser") Member loginUser) {
		
		System.out.println("controller :"+loginUser);
		
		int userNo = loginUser.getUserNo();
		
		System.out.println("유저번호는" + userNo);
		
		ArrayList selectWho = ns.selectWho(userNo);
		
		model.addAttribute("selectWho",selectWho);
		
		
		return "notice/NoticeWrite";
	}
	

	@RequestMapping(value="WhoAreYou.no")
	public String WhoAreYou(Notice Who,Model model,@ModelAttribute("loginUser") Member loginUser) {
		
		int userNo = loginUser.getUserNo();
		
		System.out.println();
		
		ArrayList selectWho = ns.selectWho(userNo);
		
		model.addAttribute("selectWho",selectWho);
		
		return "redirect:NoticeList.sn";
	}
} 















