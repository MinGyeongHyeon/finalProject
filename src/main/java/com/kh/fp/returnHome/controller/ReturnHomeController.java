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
import com.kh.fp.returnHome.model.exception.ReturnHomeInsertException;
import com.kh.fp.returnHome.model.service.ReturnHomeService;
import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.ChildrenClass;
import com.kh.fp.returnHome.model.vo.KinderClass;
import com.kh.fp.returnHome.model.vo.ReturnHome;

@Controller
public class ReturnHomeController {
	@Autowired
	private ReturnHomeService rhs;

	@RequestMapping(value = "returnHomeMain.rh")
	public String returnHomeMain(@SessionAttribute("loginUser") Member loginUser, Model m) {
		ArrayList<Children> list = null;
		ArrayList<ReturnHome> rhList = null;
		KinderClass kc = new KinderClass();
		if (loginUser.getClassification().equals("선생님")) {
			kc.setTeacherNo(loginUser.getUserNo());
			list = rhs.selectChildrenName(kc);
			
			rhList = rhs.selectReturnHomeList(list);
			
		}
		
		
		
		
		
		
		
		m.addAttribute("list", list);
		return "returnHome/returnHomeList";
	}

	@RequestMapping(value = "returnHomeWrite.rh")
	public String returnHomeWrite(@SessionAttribute("loginUser") Member loginUser, Model m) {
		ArrayList<ChildrenClass> list = null;
		ChildrenClass cc = new ChildrenClass();
		cc.setUserNo(loginUser.getUserNo());
		list = rhs.selectParentChildrens(cc);

		m.addAttribute("list", list);
		return "returnHome/returnHomeWrite";
	}

	@RequestMapping(value = "insertReturnHome.rh", method = RequestMethod.POST)
	public String insertReturnHome(@SessionAttribute("loginUser") Member loginUser, @RequestParam(value = "selectChild") String[] selectChild,
								 @RequestParam(value = "homeTime") String[] homeTimeList, ReturnHome rh, Model m) {
		int result = 0;
		String homeTime = homeTimeList[0] + " " + homeTimeList[1] + " " + homeTimeList[2];
		rh.setHomeTime(homeTime);
		System.out.println(rh);
		try {
			result = rhs.insertReturnHome(selectChild, rh);
			
		} catch (ReturnHomeInsertException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "returnHome/returnHome";
		
	}

}
