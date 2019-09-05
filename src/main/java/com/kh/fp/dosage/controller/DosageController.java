package com.kh.fp.dosage.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.dosage.model.service.DosageService;
import com.kh.fp.dosage.model.vo.DosageVO;

@Controller
@SessionAttributes("loginUser")
public class DosageController {

	@Autowired
	private DosageService ds;

	@RequestMapping(value="insertDosageRequest.ds", method=RequestMethod.GET)
	public String insertDosageRequest() {

		System.out.println("DosageController 호출됨");

		System.out.println("vo : "+d);


		return "";

	}


}
