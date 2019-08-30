
package com.kh.fp.common;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.fp.member.model.vo.Member;


@Controller
public class PageLinkServlet {
	
	
	@RequestMapping(value="loginPage.pl")
	public String loginPage() {
		return "account/join5";
	}
		
	
	@RequestMapping(value="joinHome.pl")
	public String joinHome() {
		
		
		return "account/join1";
		
	}
	
	@RequestMapping(value="joinPage2.pl")
	public String JoinPage2() {
		System.out.println("여긴 드러옹냐ㅐ !다1ㄷ2;ㅣ12ㅏㅣ바ㅣ;바ㅣ;바ㅣ;밪ㅇ;;핍ㅇ");
		
		return "account/join2";
	}
	

	@RequestMapping(value="joinPage3.pl")
	public String joinPage3(Member m , Model model) {
		

		model.addAttribute("m" , m);
		
		return "account/join3";
	}
	
	@RequestMapping(value="joinPage4.pl")
	public String joinPage4(Member m , Model model) {
		
		System.out.println("join 4 넘어가기전 m 은 무슨값 ? :" + m);
		
		model.addAttribute("m" , m);
		
		return "account/join4";
	}
	

	@RequestMapping(value="writeSchedule.pl")
	public String writeSchedule() {
		
		return "schedule/writeSchedule";
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
