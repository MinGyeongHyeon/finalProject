package com.kh.fp.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PageLinkServlet {
	
	
	@RequestMapping(value="loginPage.pl")
	public String loginPage() {
		
		return "account/join5";
	}
	
	@RequestMapping(value="drugMainView.pl")
	public String drugMainView() {
		
		return "drugRequest/drugRequestList";
	}

	@RequestMapping(value="main.pl")
	public String mainView() {
		
		return "main/main";
	}
	
	@RequestMapping(value="drugDetailList.pl")
	public String drugDetailView() {
		
		return "drugRequest/drugRequestDetail";
	}

}
