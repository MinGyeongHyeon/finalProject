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
import org.springframework.web.servlet.ModelAndView;

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
	public String returnHomeMain(@SessionAttribute("loginUser") Member loginUser,@RequestParam(value="kidsNameList", required=false) String kidsNameList,
							Model m, HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Children> list1 = null;
		ArrayList<Children> childrenNameList = null;
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
			if(kidsNameList != null) {
				kc.setChildrenNo(Integer.parseInt(kidsNameList));
				System.out.println("childrenNo :: " + kc.getChildrenNo());
			}
			list1 = rhs.selectKinderChildrenName(kc);
			childrenNameList = rhs.searchKinderChildrenName(kc);
			count = rhs.countList(kc);
			

			pi = Pagination.getPageInfo(currentPage, count);
			rhList = rhs.selectMasterReturnHomeList(kc, pi);
			

			m.addAttribute("list", list1);
			m.addAttribute("childrenNameList", childrenNameList);
		}else if (loginUser.getClassification().equals("선생님")) {
			KinderClass kc = new KinderClass();
			kc.setTeacherNo(loginUser.getUserNo());
			if(kidsNameList != null) {
				kc.setChildrenNo(Integer.parseInt(kidsNameList));
				System.out.println("childrenNo :: " + kc.getChildrenNo());
			}
			list1 = rhs.selectChildrenName(kc);
			childrenNameList = rhs.searchChildrenName(kc);
			count = rhs.countListAll(kc);
			

			pi = Pagination.getPageInfo(currentPage, count);
			rhList = rhs.selectReturnHomeList(kc, pi);
			
			//rhList = rhs.selectReturnHomeList(kc);
			
			m.addAttribute("list", list1);
			m.addAttribute("childrenNameList", childrenNameList);
		}else if (loginUser.getClassification().equals("학부모")) {
			ChildrenClass cc = new ChildrenClass();
			cc.setUserNo(loginUser.getUserNo());
			System.out.println("CCCCC : " + cc);
			list2 = rhs.selectParentChildrens(cc);
			count = rhs.parentsCountList(cc);
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
	public String insertReturnHome(@RequestParam(value = "selectChild") String[] selectChild,
								 @RequestParam(value = "homeTime") String[] homeTimeList, ReturnHome rh) {
		int result = 0;
		String homeTime = homeTimeList[0] + " " + homeTimeList[1] + " " + homeTimeList[2];
		rh.setHomeTime(homeTime);
		System.out.println(rh);
		try {
			result = rhs.insertReturnHome(selectChild, rh);
			
		} catch (ReturnHomeInsertException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
		//return "returnHome/returnList";
		return "returnHome/returnHome";
		
	}

	@RequestMapping(value = "selectReturnHomeDetail.rh")
	public String selectReturnHomeDetail(@SessionAttribute("loginUser") Member loginUser, @RequestParam(value="homeNo") int homeNo, Model m) {
		ArrayList<ReturnHome> rhList = rhs.selectReturnHomeDetail(homeNo);
		int result = 0;
		if(rhList.get(0).getReading().equals("N") && (loginUser.getClassification().equals("선생님")||loginUser.getClassification().equals("원장님"))) {
			result = rhs.updateReading(homeNo);
		}
		
		System.out.println("리스트 출력" + rhList);
		m.addAttribute("rhList", rhList.get(0));
		return "returnHome/returnHomeDetail2";
	}
	
	@RequestMapping(value="searchKids.rh")
	public ModelAndView searchKids(int kidsNameList, String classification, int userNo, int currentPage,  ModelAndView mv) {
		System.out.println("kidsNameList : " + kidsNameList);
		
		
		
		mv.setViewName("jsonView");
		return mv;
	}
	
}





