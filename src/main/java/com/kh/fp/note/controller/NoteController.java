package com.kh.fp.note.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.service.NoteService;
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

	@RequestMapping(value="goUserList.nt")
	public String goUserList() {
		return "note/userList";
	}

}
