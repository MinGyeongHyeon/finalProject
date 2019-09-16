package com.kh.fp.returnHome.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.returnHome.model.service.ReturnHomeService;
import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.KinderClass;

@Controller
public class ReturnHomeController {
	@Autowired
	private ReturnHomeService rhs;
	
	@RequestMapping(value="returnHomeMain.rh")
	public String returnHomeMain(@SessionAttribute("loginUser") Member loginUser, Model m) {
		ArrayList<Children> list = null;
		KinderClass kc = new KinderClass();
		if(loginUser.getClassification().equals("선생님")) {
			kc.setTeacherNo(loginUser.getUserNo());
			
			list = rhs.selectChildrenName(kc);
			
		}
		
		
		
		m.addAttribute("list", list);
		return "returnHome/returnHomeList";
	}
	
	@RequestMapping(value="returnHomeWrite.rh")
	public String returnHomeWrite() {
		
		return "returnHome/returnHomeWrite";
	}
	
	
}
