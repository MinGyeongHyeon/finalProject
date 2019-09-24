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

import com.kh.fp.dosage.model.exception.DosageException;
import com.kh.fp.dosage.model.service.DosageService;
import com.kh.fp.dosage.model.vo.Dosage;
import com.kh.fp.dosage.model.vo.DosageBogo;
import com.kh.fp.dosage.model.vo.DosageDetail;
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
	public String insertDosageRequest(Dosage d, Model model, HttpSession session
			, @RequestParam(value="signUrl") String signUrl) {

		System.out.println("dddddd");
		KinGardenClasses CloginUser = (KinGardenClasses)session.getAttribute("childrenKing");
		int childrenNo = CloginUser.getChildrenNo();

		System.out.println("childrenNo ::: "+childrenNo);

		if(d.getDosageKeep().equals("roomTemper")) {
			d.setDosageKeep("실온");
		}else {
			d.setDosageKeep("냉장");
		}

		d.setChildrenNo(childrenNo);

		System.out.println("vo :::" + d);
		System.out.println("signUrl ::::" + signUrl);

		try {
			int r1 = ds.insertDosageRequest(d, signUrl);

			return "redirect:dosageList.ds?insert=Y";

		} catch (DosageException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index";
		}
	}

	//투약의뢰서 리스트 가져오기
	@RequestMapping(value="dosageList.ds")
	public String dosageList(Model model, Dosage d, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("loginUser") Member loginUser) {

		int userNo = loginUser.getUserNo();
		String classification = loginUser.getClassification();

		System.out.println("dosageList 컨트롤러 호출");
		System.out.println("userNo : " + userNo);
		System.out.println("classification : " + classification);

		int currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ArrayList<DosageDetail> detailList;

		int listCount = 0;

		if(classification.equals("원장님")) {
			listCount = ds.getListCount(userNo);
			System.out.println("listCount : " + listCount);
		}else if(classification.equals("학부모")) {
			listCount = ds.getPListCount(userNo);
			System.out.println("listCount : " + listCount);
		}else {
			listCount = ds.getTListCount(userNo);
			System.out.println("listCount : " + listCount);
		}

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

			try {
				if(classification.equals("원장님")) {
					detailList = ds.selectDosageRequestList(pi, userNo);
					model.addAttribute("detailList", detailList);
				}else if(classification.equals("학부모")) {
					detailList = ds.selectPDosageRequestList(pi, userNo);
					model.addAttribute("detailList", detailList);
				}else {
					detailList = ds.selectTDosageRequestList(pi, userNo);
					model.addAttribute("detailList", detailList);
				}
				model.addAttribute("pi", pi);

				return "drugRequest/drugRequestList";

			} catch (DosageException e) {
				model.addAttribute("msg", e.getMessage());
				e.printStackTrace();
				return "index";
			}

	}

	//투약의뢰서 상세조회
/*	@RequestMapping(value="dosageDetail.ds")
	public String dosageDetail(Model model, int dosageNo) {
		System.out.println("dosageNo :: " + dosageNo);
		System.out.println(" 컨트롤러 호출 ");

		try {
			DosageDetail d = ds.selectDosageOne(dosageNo);

			model.addAttribute("d", d);

			return "drugRequest/drugRequestDetail";

		} catch (DosageException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index";
		}
	}
*/
	//투약 보고서 작성 페이지 상세 조회
	@RequestMapping(value="mediReport.ds")
	public String mediReport(Model model, int dosageNo) {
		System.out.println("dosageNo :: " + dosageNo);
		System.out.println(" 컨트롤러 호출 ");

		try {
			DosageDetail d = ds.selectDosageOne(dosageNo);

			model.addAttribute("d", d);

			return "drugRequest/drugReportWrite";

		} catch (DosageException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index";
		}
	}

	//투약 보고서 insert
	@RequestMapping(value="insertDosageBogo.ds")
	public String writeReport(Model model, @ModelAttribute("loginUser") Member loginUser, int dosageNo, DosageBogo d,
			HttpSession session, Dosage dosage) {

		int userNo = loginUser.getUserNo();
		System.out.println("userNo ------ " +userNo);
		System.out.println("dosageNo ------ " +dosageNo);

		d.setDosageNo(dosageNo);
		d.setUserNo(userNo);
		dosage.setDosageNo(dosageNo);
		dosage.setUserNo(userNo);

		System.out.println("d ::::" + d);

		try {
			int result = ds.writeReport(d);

			if(result > 0) {
				int result2 = ds.updateCheck(dosage);
				return "redirect:dosageDetail.ds?dosageNo=" + dosageNo;
			}

			return "";

		} catch (DosageException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index";
		}

	}

	//투약 보고서 작성 후 상세보기
/*	@RequestMapping(value="drugReportDetail.ds")
	public String drugReportDetail(Model model, int dosageNo) {

		System.out.println("컨트롤러 호출");
		System.out.println("dosageNo : " + dosageNo);

		return "";
	}
*/

	//투약의뢰서 상세 조회
	@RequestMapping(value="dosageDetail.ds")
	public String dosageDetail(Model model, int dosageNo, DosageDetail d) {
		System.out.println("dosageNo :: " + dosageNo);
		System.out.println("DosageDetail ::: " + d);
		System.out.println(" 컨트롤러 호출 ");

		try {

			d = ds.selectDosageOne(dosageNo);
			model.addAttribute("d", d);

			if(d.getReading().equals("N")) {
				return "drugRequest/drugRequestDetail";
			}else {
				d = ds.selectReportOne(dosageNo);
				model.addAttribute("d", d);
				return "drugRequest/drugReportDetail";
			}

		} catch (DosageException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index";
		}
	}


	//투약의뢰서 삭제
	@RequestMapping(value="updateStatus")
	public String updateStatus(Model model, int dosageNo) {

		try {
			int result = ds.updateStatus(dosageNo);

			return "redirect:dosageList.ds?check=Y";

		} catch (DosageException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index";
		}

	}


}


























