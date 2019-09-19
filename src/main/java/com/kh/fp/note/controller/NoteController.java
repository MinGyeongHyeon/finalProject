package com.kh.fp.note.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.service.NoteService;
import com.kh.fp.note.model.vo.Note;
import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.note.model.vo.Pagination;
import com.kh.fp.note.model.vo.noteKindergarden;

@Controller
@SessionAttributes("loginUser")
public class NoteController {
	@Autowired
	private NoteService ns;

	// 쪽지보내기 유치원 리스트 불러오기
	@RequestMapping(value = "userList.nt")
	public ModelAndView userList(ModelAndView mv, noteKindergarden k) {

		System.out.println("userList 컨트롤러 호출");

		try {
			ArrayList<noteKindergarden> kArr = ns.selectUserList();
			mv.addObject("kArr", kArr);
			mv.setViewName("note/sendNote");
			return mv;
		} catch (NoteException e) {
			mv.addObject("msg", e.getMessage());
			e.printStackTrace();
			return mv;
		}
	}

	// 쪽지 보내기 리스트 input창에 입력
	@RequestMapping(value = "insertSendList.nt", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView insertSendList(ModelAndView mv, int sendNo, List<String> receiveList) {
		System.out.println("호출됨");

		System.out.println("sendNo :::" + sendNo);
		for (String receiveNo : receiveList) {
			System.out.println("receiveList ::" + receiveList);
		}

		return mv;
	}

	// 쪽지 보내기
	@RequestMapping(value = "insertNote.nt")
	public String insertNote(Model model, Note n, int kinderNo) {

		System.out.println("쪽지보내기 호출됨");
		try {
			int result = ns.insertNote(kinderNo);

			return "note/sentNoteBox";

		} catch (NoteException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index.jsp";
		}

	}

	// 보낸 쪽지함 리스트 조회
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

	// 보낸 쪽지함 페이징 처리
	@RequestMapping(value = "sentNoteList.nt")
	public String sentNoteList(Model model, Note n, HttpServletRequest request, HttpServletResponse response) {

		System.out.println("sentNoteList 컨트롤러 호출");

		int currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ArrayList<Note> nList;
		try {

			int listCount = ns.getListCount();

			System.out.println("listCount :::: " + listCount);

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

	// 보낸 쪽지함 내용 상세보기
	@RequestMapping(value = "selectSentNoteOne.nt")
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

	// 보낸쪽지함 상세내용 조회에서 삭제하기
	@RequestMapping(value = "deleteSentNoteOne.nt")
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

	// 보낸 쪽지함 여러개 삭제
//	@RequestMapping(value="deleteSentNotes.nt")
//	public String deleteSentNoteOne(String noteNo, Model model) {
//		System.out.println("호출됨");
//
//		try {
//			int result = ns.deleteSentNotes(noteNo);
//
//			return "redirect:sentNoteList.nt";
//
//		} catch (NoteException e) {
//			model.addAttribute("msg", e.getMessage());
//			e.printStackTrace();
//			return "index.jsp";
//		}
//	}

	// 받은 쪽지함 리스트 조회
	@RequestMapping(value = "recieveNoteList.nt")
	public String recieveNoteList(Model model, Note n, HttpServletRequest request, HttpServletResponse response) {

		System.out.println("recieveNoteList 컨트롤러 호출");

		int currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ArrayList<Note> rList;
		try {

			int listCount = ns.getRecieveListCount();

			System.out.println("listCount :::: " + listCount);

			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

			rList = ns.selectRecieveNoteList(pi);

			model.addAttribute("rList", rList);
			model.addAttribute("pi", pi);

			return "note/noteMain";

		} catch (NoteException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index.jsp";
		}
	}

	// 받은 쪽지함 내용 상세보기
	@RequestMapping(value = "selectRecieveNoteOne.nt")
	public String selectRecieveNoteOne(int noteNo, Model model) {

		System.out.println("상세보기 호출");
		System.out.println(noteNo);

		try {
			int result = ns.checkedYN(noteNo);

			Note note = ns.selectRecieveNoteOne(noteNo);
			model.addAttribute("note", note);
			//model.addAttribute("result", result);

			return "note/recieveNoteDetail";

		} catch (NoteException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index.jsp";
		}
	}

	// 받은쪽지함 상세내용 조회에서 삭제하기
	@RequestMapping(value = "deleteRecieveNoteOne.nt")
	public String deleteRecieveNoteOne(int noteNo, Model model) {
		System.out.println("호출됨");
		try {
			int result = ns.deleteRecieveNoteOne(noteNo);

			return "redirect:recieveNoteList.nt";
		} catch (NoteException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index.jsp";
		}
	}

	// 받은 쪽지함 상세내용에서 답장하기
	/*
	 * @RequestMapping(value = "replyNote.nt") public String replyNote(int userNo,
	 * Model model) { System.out.println("호출됨");
	 *
	 * return ""; }
	 */



	@RequestMapping(value = "goUserList.nt")
	public String goUserList() {
		return "note/userList";
	}

}
