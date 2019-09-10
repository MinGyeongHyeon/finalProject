package com.kh.fp.notice.controller;

import java.util.ArrayList;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.notice.model.service.NoticeService;

@Controller
@SessionAttributes("loginUser")
public class NoticeWhoAreYouController {

	
	@Autowired
	private NoticeService ns;
	
	@RequestMapping(value="NoticeWhoAreYou.no")
	public String NoticeWhoAreYou(Model model,@ModelAttribute("loginUser") Member loginUser) {
		
		System.out.println("controller :"+loginUser);
		int userNo = loginUser.getUserNo();
		
		System.out.println("유저번호는" + userNo);
		
		ArrayList selectWho = ns.selectWho(userNo);
		
		model.addAttribute("selectWho",selectWho);
		
		
		return "notice/NoticeWrite";
	}
	
}
