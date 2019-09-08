package com.kh.fp.note.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.service.NoteService;
import com.kh.fp.note.model.vo.Kindergarden;

@Controller
@SessionAttributes("loginUser")
public class NoteController {
	@Autowired
	private NoteService ns;

	@RequestMapping(value="userList.nt")
	public String userList(Model model, Kindergarden k) {

		System.out.println("userList 컨트롤러 호출");

		try {
			ArrayList<Kindergarden> kArr = ns.selectUserList();
			model.addAttribute("list", kArr);
			return "redirect:sendNote.jsp";
		} catch (NoteException e) {
			model.addAttribute("msg", e.getMessage());
			e.printStackTrace();
			return "index.jsp";
		}

	}

}
