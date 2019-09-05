package com.kh.fp.dosage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.dosage.model.service.DosageService;
import com.kh.fp.dosage.model.vo.DosageVO;

@Controller
@SessionAttributes("loginUser")
public class DosageController {

	@Autowired
	private DosageService ds;

	@RequestMapping(value="insertDosageRequest.ds" )
	public String insertDosageRequest(DosageVO d) {

		System.out.println("!!!!!!!!!! DosageController 호출됨");

		int result = ds.insertDosageRequest(d);

		System.out.println("controller::::::::::::"+d);


		return "";

	}

}
