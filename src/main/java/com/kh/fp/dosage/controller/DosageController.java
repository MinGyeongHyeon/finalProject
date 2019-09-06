package com.kh.fp.dosage.controller;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.dosage.model.exception.DosageException;
import com.kh.fp.dosage.model.service.DosageService;
import com.kh.fp.dosage.model.vo.DosageVO;
import com.kh.fp.homework.model.exception.HomeWorkException;

@Controller
@SessionAttributes("loginUser")
public class DosageController {

	@Autowired
	private DosageService ds;


	/**
	 * 투약의로서 작성(insert)
	 * @param d
	 * @param model
	 * @return
	 */
	@RequestMapping(value="insertDosageRequest.ds")
	public String insertDosageRequest(DosageVO d, Model model) {

		if(d.getDosageDate().equals("today")) {

			Date today = new Date();
			System.out.println(today);
			SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");

			java.sql.Date dToday = new java.sql.Date(today.getTime());
			System.out.println(dToday);

			d.setDateDate(dToday);
		}
		if(d.getDosageDate().equals("tomorrow")) {

			Date tomorrow = new Date(new Date().getTime() + 60*60*24*1000);
			System.out.println(tomorrow);
			SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");

			java.sql.Date dTomorrow = new java.sql.Date(tomorrow.getTime());
			System.out.println(dTomorrow);

			d.setDateDate(dTomorrow);
		}

		if(d.getDosageKeep().equals("roomTemper")) {
			d.setDosageKeep("실온");
		}else {
			d.setDosageKeep("냉장");
		}

		System.out.println("DosageController 호출됨");

		System.out.println("vo : "+d);
		System.out.println("model ::::" + model);

		int result = ds.insertDosageRequest(d);

		return "redirect:drugRequestList.jsp";
	}


}
