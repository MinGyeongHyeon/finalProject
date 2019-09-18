package com.kh.fp.returnHome.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kh.fp.common.Pagination;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.vo.PageInfo;
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
	public String returnHomeMain(@SessionAttribute("loginUser") Member loginUser, Model m, HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Children> list1 = null;
		ArrayList<ChildrenClass> list2 = null;
		ArrayList<ReturnHome> rhList = null;
		int count = 0;
		PageInfo pi = null;
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		
		if (loginUser.getClassification().equals("원장님")) {
			KinderClass kc = new KinderClass();
			kc.setKinderNo(loginUser.getUserNo());
			list1 = rhs.selectKinderChildrenName(kc);
			//count = rhs.countListAll(kc);
			

			pi = Pagination.getPageInfo(currentPage, count);
			//rhList = rhs.selectMasterReturnHomeList(kc, pi);
			
			//rhList = rhs.selectReturnHomeList(kc);
			
			m.addAttribute("list", list1);
		}else if (loginUser.getClassification().equals("선생님")) {
			KinderClass kc = new KinderClass();
			kc.setTeacherNo(loginUser.getUserNo());
			list1 = rhs.selectChildrenName(kc);
			count = rhs.countListAll(kc);
			

			pi = Pagination.getPageInfo(currentPage, count);
			rhList = rhs.selectReturnHomeList(kc, pi);
			
			//rhList = rhs.selectReturnHomeList(kc);
			
			m.addAttribute("list", list1);
		}else if (loginUser.getClassification().equals("학부모")) {
			ChildrenClass cc = new ChildrenClass();
			cc.setUserNo(loginUser.getUserNo());
			list2 = rhs.selectParentChildrens(cc);
			count = rhs.partentsCountList(cc);
			System.out.println("count!! " + count);

			pi = Pagination.getPageInfo(currentPage, count);
			rhList = rhs.selectParentsReturnHomeList(cc, pi);
			
			//rhList = rhs.selectParentsReturnHomeList(cc);
			
			m.addAttribute("list", list2);
		}
		
		
		System.out.println(rhList.size());
		m.addAttribute("pi", pi);
		m.addAttribute("rhList", rhList);
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

	@RequestMapping(value = "selectReturnHomeDetail.rh")
	public String selectReturnHomeDetail(@RequestParam(value="homeNo") int homeNo, Model m) {
		ArrayList<ReturnHome> rhList = rhs.selectReturnHomeDetail(homeNo);
		System.out.println("리스트 출력" + rhList);
		m.addAttribute("rhList", rhList.get(0));
		return "returnHome/returnHomeDetail";
	}
}
