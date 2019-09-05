package com.kh.fp.homework.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.service.HomeworkService;
import com.kh.fp.homework.model.vo.homework;



@Controller
@SessionAttributes("loginUser")
public class HomeWorkController {
	
	@Autowired
	private HomeworkService hs;


		@RequestMapping(value="homeWorkWrite.hw" )
		public String homeWorkWrite(homework h,Model model) {
			
			h.setBoardtype("알림장");
			h.setKinderNo(1);
			h.setClassNum(2);
			h.setIndividualContent("없음");
			
			System.out.println(h);
			
			try {
				hs.insertHomeWork(h);
				
				return "redirect:homeworkDiaryList.jsp";
			} catch (HomeWorkException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return "";

		}

}
	















