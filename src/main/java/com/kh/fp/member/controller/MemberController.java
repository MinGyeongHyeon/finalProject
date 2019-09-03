package com.kh.fp.member.controller;


import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
	
	@RequestMapping(value="sendemail.me")
	public ModelAndView sendEmail(String email, ModelAndView mv) {
		
		
		String host = "smtp.naver.com";
		String subject = "키즈랜드 인증번호 전달";
		String fromName = "키즈랜드 관리자";
		String from = "rudgus1005";
		String password = "alsrudgus0@";
		String to1 = email;
		
		int random = 0;
		
		random = (int)(Math.random()*99999)+10000;
		
		String content = "키즈랜드 회원가입 인증번호는 [" + random + "] 입니다. 정확히 입력해주세요";
		
		try {
		
		Properties props = new Properties();
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.transport.protocol","smtp");
		props.put("mail.smtp.host",host);
		props.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.port", 587);
		props.put("mail.smtp.user",from);
		props.put("mail.smtp.auth","true");
		
		Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				
				return new PasswordAuthentication(from,password);
			}
			
		});
		
		Message msg = new MimeMessage(mailSession);
		
		msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName,"UTF-8","B")));
		
		InternetAddress[] address1 = {new InternetAddress(to1)};
		msg.setRecipients(Message.RecipientType.TO,address1);
		msg.setSubject(subject);
		msg.setSentDate(new Date());
		msg.setContent(content, "text/html;charset=euc-kr");
		
		
		Transport.send(msg);
		
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		mv.addObject("random", random);
		mv.setViewName("jsonView");
		
		
		
		return mv;
	
		
	}
	
	@RequestMapping(value="idcheck.me")
	public ModelAndView idcheck(Member m, ModelAndView mv) {
	
		
		Member idcheck = ms.idcheck(m);
		
		System.out.println(idcheck);
		
		int result = 0;
		
		if(idcheck != null) {
			result = 1;
		}else {
			result = 2;
		}
		
		
		mv.addObject("idcheck", result);
		mv.setViewName("jsonView");
		
		
		return mv;
	}

	

	
	
	

	
	

}
