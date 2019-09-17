package com.kh.fp.note.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.common.Pagination;
import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.service.NoteService;
import com.kh.fp.note.model.vo.Note;
import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.note.model.vo.noteKindergarden;

@Controller
@SessionAttributes("loginUser")
public class NoteController {
	@Autowired
	private NoteService ns;

	@RequestMapping(value="userList.nt")
	public String userList(Model model, noteKindergarden k) {

		System.out.println("userList 컨트롤러 호출");

		try {
			ArrayList<noteKindergarden> kArr = ns.selectUserList();
			model.addAttribute("kArr", kArr);
			return "note/userList";
		} catch (NoteException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index.jsp";
		}
	}

	//보낸 쪽지함 리스트 조회
//	@RequestMapping(value="sentNoteList.nt")
//	public String sentNoteList(Model model, Note n) {
//
//		System.out.println("sentNoteList 컨트롤러 호출");
//
//		ArrayList<Note> nList;
//		try {
//			nList = ns.selectSentNoteList();
//			model.addAttribute("nList", nList);
//			return "note/sentNoteBox";
//
//		} catch (NoteException e) {
//			model.addAttribute("msg", e.getMessage());
//			e.printStackTrace();
//			return "index.jsp";
//		}
//	}

	//보낸 쪽지함 페이징 처리
	@RequestMapping(value="sentNoteList.nt")
	public String sentNoteList(Model model, Note n, HttpServletRequest request, HttpServletResponse response) {

		System.out.println("sentNoteList 컨트롤러 호출");

		int currentPage = 1;

		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ArrayList<Note> nList;
		try {

			int listCount = ns.getListCount();

			System.out.println("listCount :::: "+listCount);

			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

			nList = ns.selectSentNoteList(pi);

			model.addAttribute("nList", nList);
			model.addAttribute("pi", pi);

			return "note/sentNoteBox";

		} catch (NoteException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index.jsp";
		}
	}

	//보낸 쪽지함 내용 상세보기
	@RequestMapping(value="selectSentNoteOne.nt")
	public String selectSentNoteOne(int noteNo, Model model) {

		System.out.println("상세보기 호출");
		System.out.println(noteNo);

		try {
			Note n = ns.selectSentNoteOne(noteNo);

			model.addAttribute("n", n);

			return "note/sentNoteDetail";

		} catch (NoteException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index.jsp";
		}
	}

	//보낸쪽지함 상세내용 조회에서 삭제하기
	@RequestMapping(value="deleteSentNoteOne.nt")
	public String deleteSentNoteOne(int noteNo, Model model) {
		System.out.println("호출됨");

		try {
			int result = ns.deleteSentNoteOne(noteNo);

			return "redirect:sentNoteList.nt";

		} catch (NoteException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index.jsp";
		}
	}

	@RequestMapping(value="goUserList.nt")
	public String goUserList() {
		return "note/userList";
	}

}
