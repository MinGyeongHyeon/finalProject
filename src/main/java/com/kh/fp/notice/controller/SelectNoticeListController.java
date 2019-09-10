package com.kh.fp.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.notice.model.service.NoticeService;

@Controller
@SessionAttributes("loginUser")
public class SelectNoticeListController {

	@Autowired
	private NoticeService ns;
	
	@RequestMapping(value="NoticeWrite.sn")
	public String SelectNoticeList() {

		int currentPage = 1;
		
		
		
		
		
		
		return null;
	}
	
	
}
