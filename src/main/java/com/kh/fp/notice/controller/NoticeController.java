package com.kh.fp.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.notice.model.exception.NoticeException;
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
		
	
		System.out.println("컨트롤러"+n);
		 
		try {
			String insertNotice = ns.insertNotice(n);
			
			return "redirect:homeworkDiaryList.jsp";
			
		} catch (NoticeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "";
	}
	
	
}
