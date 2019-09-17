package com.kh.fp.returnHome.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.returnHome.model.service.ReturnHomeService;
import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.ChildrenClass;
import com.kh.fp.returnHome.model.vo.KinderClass;
import com.kh.fp.returnHome.model.vo.ReturnHome;

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
	public String returnHomeWrite(@SessionAttribute("loginUser") Member loginUser, Model m) {
		ArrayList<ChildrenClass> list = null;
		ChildrenClass cc = new ChildrenClass();
		cc.setUserNo(loginUser.getUserNo());
		list = rhs.selectParentChildrens(cc);
		
		m.addAttribute("list", list);
		return "returnHome/returnHomeWrite";
	}
	
	@RequestMapping(value="insertReturnHome.rh", method=RequestMethod.POST)
	public void insertReturnHome(@SessionAttribute("loginUser") Member loginUser,@RequestParam(value="selectChild") String[] selectChild,
								@SessionAttribute("homeTime") String[] homeTimeList, ReturnHome rh, String dataURL, Model m) {
		System.out.println(rh);
		String homeTime = homeTimeList[0] + homeTimeList[1] + homeTimeList[2];
		rh.setHomeTime(homeTime);
		
		
		
		//returnHomeMain(loginUser, m);
	}
	
	
	
}
