package com.kh.fp.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.notice.model.service.NoticeService;
import com.kh.fp.notice.model.vo.Notice;

@Controller
@SessionAttributes("loginUser")
public class NoticeController {
	
	@Autowired
	private NoticeService ns;
	
	
	@RequestMapping(value="NoticeWrite.no")
	public String NoticeWrite(Notice n, Model model) {
		
		n.setBoardtype("공지사항");
		
		
		if(n.getSelectClass().equals("AllClass")) {
			
			n.setKinderNum(1);
			
		}else {
			
			n.setClassNum(1);
			
		}
		System.out.println(n);
		
		
		 String insertNotice = ns.insertNotice(n);
		
		return null;
	}
	
	
}
