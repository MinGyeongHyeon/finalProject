package com.kh.fp.pay.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.pay.model.service.PayService;
import com.kh.fp.returnHome.model.vo.ChildrenClass;

@Controller
public class PayController {
	@Autowired
	private PayService pas;
	
	@RequestMapping(value = "payPage.pa")
	public String payPage(@SessionAttribute("loginUser") Member loginUser, Model m) {
		

		return "main/introduceService";
	}

	
}
