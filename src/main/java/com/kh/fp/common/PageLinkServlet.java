package com.kh.fp.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PageLinkServlet {
	
	
	@RequestMapping(value="loginPage.pl")
	public String loginPage() {
		
		return "account/join5";
	}
	


}
