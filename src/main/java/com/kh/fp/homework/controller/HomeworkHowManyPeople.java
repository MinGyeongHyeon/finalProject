package com.kh.fp.homework.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.homework.model.service.HomeworkService;

@Controller
public class HomeworkHowManyPeople {
	
	@Autowired
	private HomeworkService hs;
	
	@RequestMapping(value="howmanypeopleinClass.ih")
	public String homeWork(Model model) {
		
		int classNum = 2;
		
		int result = hs.howManyPeople(classNum);
		
		
		System.out.println(result);
		
		model.addAttribute("result", result);
		
		return "homeworkDiary/homeworkIndividualWrite";
	}
}
