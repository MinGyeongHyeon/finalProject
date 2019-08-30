package com.kh.fp.member.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.member.model.exception.LoginException;
import com.kh.fp.member.model.service.MemberService;
import com.kh.fp.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	
	
	  @Autowired
	  private MemberService ms;
	  
		@Autowired
		private BCryptPasswordEncoder passwordEncoder;
	 
	
	@RequestMapping(value="loginPage.me")
	public String loginPage() {
		
		return "account/join5";
	}
	
	@RequestMapping(value="login.me")
	public String login(Member m , Model model) {
		
		try {
			System.out.println("m : " + m);
			Member loginUser = ms.login(m);
			
			
			
			
			return "redirect:WEB-INF/views/main/parentsMain.jsp";
			
		} catch (LoginException e) {
			
			return "redirect:parentsMain.jsp";

		
		}
		
		
	}
	
	
	@RequestMapping(value="joinPage5.me")
	public String joinPage5(Member m , Model model){
		
		System.out.println("M 이무슨 값인지 확인 : " +  m);
		
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		
		m.setUserPwd(encPassword);
		
		int result = ms.insertUser(m);
		
		
		
		return "";
	}
	
	
	

	
	

}
