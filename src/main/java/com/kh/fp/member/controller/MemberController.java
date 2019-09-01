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

			Member loginUser = ms.login(m);
			
			model.addAttribute("loginUser",loginUser);
			
			
			
			return "main/main";
			
		} catch (LoginException e) {
			
			
			return "redirect:parentsMain";

		
		}
		
		
	}
	
	
	@RequestMapping(value="joinPage5.me")
	public String joinPage5(Member m , Model model){
		
		
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		
		m.setUserPwd(encPassword);
		
		int result = ms.insertUser(m);
		
		
		
		return "";
	}
	
	
	

	
	

}
