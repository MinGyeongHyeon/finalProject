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
import com.kh.fp.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
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

			return "journal/journalList";

		} catch (JournalException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index";
		}

    }

    //일지 리스트 불러오기
    @RequestMapping(value="journalMain.jn")
    public String journalMain(Model model,  HttpServletRequest request, HttpServletResponse response
    		,@ModelAttribute("loginUser") Member loginUser, Journal j) {
    	int userNo = loginUser.getUserNo();

    	System.out.println("호출됨");
    	System.out.println("userNo" + userNo);

    	int currentPage = 1;

    	if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

    	ArrayList<Journal> jList;

    	int listCount = 0;

    	listCount = js.getListCount(userNo);

    	return "";
    }

}
