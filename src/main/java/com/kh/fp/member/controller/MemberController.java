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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.common.Pagination;
import com.kh.fp.member.model.exception.JoinException;
import com.kh.fp.member.model.exception.LoginException;
import com.kh.fp.member.model.service.MemberService;
import com.kh.fp.member.model.vo.KidMember;
import com.kh.fp.member.model.vo.KinGardenClass;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.vo.PageInfo;

@Controller
@SessionAttributes({"loginUser","teacherKing"})
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
			
			if(loginUser.getClassification().equals("원장님")) {
				
				int childrenCount = ms.childrenCount(loginUser);
				int teacherCount = ms.teacherCount(loginUser);
				int childrenCountN = ms.childrenCountN(loginUser);
				int teacherCountN = ms.teacherCountN(loginUser);
				
				model.addAttribute("childrenCount", childrenCount);
				model.addAttribute("teacherCount",teacherCount);
				model.addAttribute("childrenCountN", childrenCountN);
				model.addAttribute("teacherCountN",teacherCountN);
				
				
			}else if(loginUser.getClassification().equals("선생님")) {
				
				int teacherYn = ms.teacherYn(loginUser);
				
				if(teacherYn > 0) {
					
					KinGardenClasses teacherKing = ms.teacherKing(loginUser);
					
					model.addAttribute("teacherKing" , teacherKing);
					
					return "main/parentsMain";
					
					
				}else {
					
					model.addAttribute("msg" ," 승인 처리가 안료되지 않았습니다. 해당 유치원에 문의 주세요. ");
					
					return "account/join5";
					
				}
				
				
			}
			
			model.addAttribute("loginUser",loginUser);
		
			
			
			return "main/parentsMain";
			
		} catch (LoginException e) {
			
			model.addAttribute("msg" ,e.getMessage());
			
			
			return "account/join5";

		
		}
		
		
	}
	
	
	@RequestMapping(value="joinPage5.me")
	public String joinPage5(Member m , Model model){
		
		
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		
		m.setUserPwd(encPassword);
		
		int result;
		
		try {
			
			result = ms.insertUser(m);
			
			
			Member selectNo = null;
			
			if(result > 0) {
				
				selectNo = ms.selectnumber(m);

			}
			
			if(selectNo != null ) {
				
				if(m.getClassification().equals("원장님")) {
					
					model.addAttribute("select",selectNo);
					
					return "join/kinrandEnrollment";
					
				}else if(m.getClassification().equals("선생님")) {
					
					model.addAttribute("select",selectNo);
					
					return "join/jointeacher";
				}else {
					model.addAttribute("select",selectNo);
					
					return "join/joinkid";
				}
				
			}
			
			return "";
			
			
		} catch (JoinException e) {
			
			model.addAttribute("msg" , e.getMessage());

			return "account/join4";
		}
		
		

		
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
	
	@RequestMapping(value="kidjoin.me")
	public String kidjoin(KidMember km ,Model model) {
		
		km.setBirth(km.getBirth1() + "/" + km.getBirth2() + "/" + km.getBirth3());
		
		try {
			
			int result = ms.insertkid(km);
			
			if(result > 0 ) {
				int select = km.getUserNo();
				
				int selectki = ms.selectkid(select);
				
				
				km.setChildrenNo(selectki);
				
			}
			
			model.addAttribute("km",km);
			
			
		} catch (JoinException e) {

			e.printStackTrace();
	
		}
		
		
		
		
		return "join/searchGarden";
	}
	
	@RequestMapping(value="kinrand.me")
	public String kininset(KinderGarden kg ,Model model) {
		
		kg.setAddress(kg.getSido()+ " " + kg.getSigungu() + " " + kg.getAddress3());
		
		int result = ms.kininsert(kg); 
		
		if(result > 0) {
			
			KinGardenClass kc = new KinGardenClass();
			
			kc.setKinderNo(kg.getKinderNo());
			kc.setClassName(kg.getClassName());
			
			
			
			int insert = ms.Kinclassinsert( kc); 
			
			ArrayList list = ms.kinclassselect(kc);
			
			int classinsert = ms.classinsert(list);
			
			model.addAttribute("msg" , "회원가입이 완료 되었습니다.");
			
		}
		
		
		
		
		
		
		return "account/join5";
	}
	
	@RequestMapping(value="selectId.me")
	public ModelAndView selectId(Member m , ModelAndView mv) {
		
		
		
		
		
		return mv;
	}
	
	@RequestMapping(value="teacheron.me")
	public String teacherOn(Member m ,Model model, int currentPage , int currentPage2) {
		
		
		int listCount = ms.teacherMeCount(m);
		
		int listCount2 = ms.teacherMe2Count(m);
		
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		PageInfo pi2 = Pagination.getPageInfo(currentPage2, listCount2);
		
		
		ArrayList listMe = ms.teacherMe(m,pi2);
		
		ArrayList listMe2 = ms.teacherMe2(m,pi);
		
		ArrayList listMe3 = ms.childrenMe3(m);
		
		System.out.println("선생님 list 의 값 : " + listMe);
		System.out.println("선생님 list2  의 값 : " + listMe2);
		System.out.println("선생님 list3 의 값 : " + listMe3);
		
		
	
		
		model.addAttribute("listMe", listMe);
		model.addAttribute("listMe2",listMe2);
		model.addAttribute("listMe3",listMe3);
		model.addAttribute("pi",pi);
		model.addAttribute("pi2",pi2);

		
		
		
		return "kingteacher/teachermanagement";
	}
	
	@RequestMapping(value="childrenMe.me")
	public String childrenMe(Member m , Model model , int currentPage , int currentPage2) {
		
		int listCount = ms.childrenMeCount(m);
		
		int listCount2 = ms.childrenMeCount2(m);
		
	
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		PageInfo pi2 = Pagination.getPageInfo(currentPage2,listCount2);
	
		ArrayList listMe = ms.childrenMe(m, pi2);
		
		ArrayList listMe2 = ms.childrenMe2(m , pi);
		
		ArrayList listMe3 = ms.childrenMe3(m);
		
		
		model.addAttribute("listMe",listMe);
		model.addAttribute("listMe2", listMe2);
		model.addAttribute("listMe3", listMe3);
		model.addAttribute("pi",pi);
		model.addAttribute("pi2",pi2);

		
		
		return"kingteacher/childrenmanagement";
	}
	
	@RequestMapping(value="teacherAt.me")
	public String teacherAt(Member m ,Model model) {
		
		Member teacher = ms.teacherAt(m);
		
		model.addAttribute("teacher" , teacher);
		
		
		return "join/searchGarden";
	}
	

	

	
	
	

	
	

}
