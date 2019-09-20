package com.kh.fp.dosage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.fp.dosage.model.service.DosageService;
import com.kh.fp.dosage.model.vo.Dosage;
import com.kh.fp.dosage.model.vo.PageInfo;
import com.kh.fp.dosage.model.vo.Pagination;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.Member;

@Controller
@SessionAttributes({"loginUser","childrenKing"})
public class DosageController {
	@Autowired
	private DosageService ds;

	//투약의뢰서 작성(insert)
	@RequestMapping(value="insertDosageRequest.ds")
	public String insertDosageRequest(Dosage d, Model model, HttpSession session, @ModelAttribute("loginUser") Member loginUser) {
		System.out.println("dddddd");
		KinGardenClasses CloginUser = (KinGardenClasses)session.getAttribute("childrenKing");

		int childrenNo = CloginUser.getChildrenNo();
		int userNo = loginUser.getUserNo();

		System.out.println("childrenNo ::: "+childrenNo);
		System.out.println("userNo :::"+userNo);

		return "";
	}

	/*
	@RequestMapping(value="insertDosageRequest.ds")
	public String insertDosageRequest(DosageVO d, Model model) {

		if(d.getDosageDate().equals("today")) {

			Date today = new Date();
			System.out.println(today);
			SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");

			java.sql.Date dToday = new java.sql.Date(today.getTime());
			System.out.println(dToday);

			d.setDateDate(dToday);
		}
		if(d.getDosageDate().equals("tomorrow")) {

			Date tomorrow = new Date(new Date().getTime() + 60*60*24*1000);
			System.out.println(tomorrow);
			SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");

			java.sql.Date dTomorrow = new java.sql.Date(tomorrow.getTime());
			System.out.println(dTomorrow);

			d.setDateDate(dTomorrow);
		}

		if(d.getDosageKeep().equals("roomTemper")) {
			d.setDosageKeep("실온");
		}else {
			d.setDosageKeep("냉장");
		}

		System.out.println("DosageController 호출됨");

		System.out.println("vo : "+d);
		System.out.println("model ::::" + model);

		int result = ds.insertDosageRequest(d);

		return "redirect:drugRequestList.jsp";
	}
*/

	//투약의뢰서 리스트 가져오기 / 리스트 카운트
	@RequestMapping(value="dosageList.ds")
	public String dosageList(Model model, Dosage d, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("loginUser") Member loginUser) {

		int userNo = loginUser.getUserNo();

		System.out.println("dosageList 컨트롤러 호출");
		System.out.println("userNo" + userNo);

		int currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ArrayList<Dosage> dList;

		int listCount = ds.getListCount(userNo);

		System.out.println("listCount :::: " + listCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		return "";
	}


}


























