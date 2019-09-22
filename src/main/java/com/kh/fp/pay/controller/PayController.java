package com.kh.fp.pay.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.pay.model.service.PayService;
import com.kh.fp.pay.model.vo.Kindergarden;
import com.kh.fp.pay.model.vo.Pay;


@Controller
public class PayController {
	@Autowired
	private PayService pas;
	
	@RequestMapping(value = "payment.pa")
	public String payPage(@SessionAttribute("loginUser") Member loginUser, Model m) {
		int kinderNo = loginUser.getUserNo();
		
		ArrayList<Kindergarden> kg = pas.selectGardenInfo(kinderNo);
		
		m.addAttribute("kg",kg);
		return "main/payment";
	}
	
	@RequestMapping(value="paymentSuccess.pa", method=RequestMethod.POST)
	public String paymentSuccess(@SessionAttribute("loginUser") Member loginUser, Pay pay, HttpServletRequest request, Model m) {
		System.out.println("실행~");
		int result = 0;
		
		pay.setUserNo(loginUser.getUserNo());
		if(pay.getSeasonId() == 1) {
			pay.setPayMoney(Integer.parseInt((String)request.getParameter("price")));
		}else {
			pay.setPayMoney(Integer.parseInt((String)request.getParameter("newPrice")));
		}
		System.out.println(pay);	
		
		result = pas.paymentSuccess(pay);
		
		
		return "main/payment";
	}

	
}