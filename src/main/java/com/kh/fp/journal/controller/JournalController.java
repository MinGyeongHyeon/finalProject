package com.kh.fp.journal.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.journal.model.exception.JournalException;
import com.kh.fp.journal.model.service.JournalService;
import com.kh.fp.journal.model.vo.Journal;
import com.kh.fp.journal.model.vo.PageInfo;
import com.kh.fp.journal.model.vo.Pagination;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;

@Controller
@SessionAttributes({"loginUser", "teacherKing"})
public class JournalController {

    @Autowired
    private JournalService js;


    //일지 insert
    @RequestMapping(value="writeJournal.jn")
    public String writeJournal(Model model, Journal j, @ModelAttribute("loginUser") Member loginUser, HttpSession session) {

        int userNo = loginUser.getUserNo();

        System.out.println("호출됨");
        System.out.println("!@#!@# : " + userNo);

        j.setUserNo(userNo);

        System.out.println("vo :::" + j);

        try {
			int result = js.writeJournal(j);

			return "redirect:journalMain.jn";

		} catch (JournalException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index";
		}

    }

    //일지 리스트 불러오기
    @RequestMapping(value="journalMain.jn")
    public String journalMain(Model model,  HttpServletRequest request, HttpServletResponse response
    		,@ModelAttribute("loginUser") Member loginUser, Journal j, HttpSession session){

    	int userNo = loginUser.getUserNo();
    	String classification = loginUser.getClassification();

		/*
		 * KinGardenClasses kc = (KinGardenClasses)session.getAttribute("teacherKing");
		 * int kinderNo = kc.getKinderNo();
		 */

    	System.out.println("호출됨");
    	System.out.println("userNo" + userNo);
    	//System.out.println("kinderNo : " + kinderNo);

    	//j.setKinderNo(kinderNo);

    	int currentPage = 1;

    	if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

    	ArrayList<Journal> jList;

    	int listCount = 0;

    	if(classification.equals("원장님")) {
    		listCount = js.getListCount(userNo);
    	}else {
    		KinGardenClasses kc = (KinGardenClasses)session.getAttribute("teacherKing");
    		int kinderNo = kc.getKinderNo();
    		j.setKinderNo(kinderNo);
    		System.out.println(kinderNo);
    		j.setLoginUserNo(userNo);
    		System.out.println(j);
    		listCount = js.getTListCount(j);
    	}
    	System.out.println("listCount :::: " + listCount);

    	PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

    		try {
    			if(classification.equals("원장님")) {
    				jList = js.selectJournalList(pi, userNo);
    			}else {
    				KinGardenClasses kc = (KinGardenClasses)session.getAttribute("teacherKing");
    	    		int kinderNo = kc.getKinderNo();
    	    		j.setKinderNo(kinderNo);
    	    		System.out.println(kinderNo);
    	    		j.setLoginUserNo(userNo);
    	    		System.out.println(j);
    				jList = js.selectTJournalList(pi, j);
    			}

    			model.addAttribute("jList", jList);
    			model.addAttribute("pi", pi);

    			return "journal/journalList";

    		} catch (JournalException e) {
				model.addAttribute("msg", e.getMessage());
				e.printStackTrace();
				return "index";
			}

    }


    //일지 상세조회
    @RequestMapping(value="selectJournalOne.jn")
    public String selectJournalOne(Model model, int journalNo) {

    	System.out.println("상세보기 호출");
    	System.out.println(journalNo);

    	try {
			Journal j = js.selectJournalOne(journalNo);

			model.addAttribute("j", j);

			return "journal/journalDetail";

		} catch (JournalException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index";
		}

    }


    //일지 삭제하기
    @RequestMapping(value="updateStatus.jn")
    public String updateStatus(Model model, int journalNo) {
    	System.out.println("journalNo" + journalNo);

    	try {
			int result = js.updateStatus(journalNo);

			return "redirect:journalMain.jn?check=Y";
		} catch (JournalException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index";
		}

    }
}
