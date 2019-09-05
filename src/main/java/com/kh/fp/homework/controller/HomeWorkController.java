package com.kh.fp.homework.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.dosage.model.service.DosageService;
import com.kh.fp.dosage.model.vo.DosageVO;
import com.kh.fp.homework.model.vo.HomeWork;

public class HomeWorkController {
	
	@Controller
	@SessionAttributes("loginUser")
	public class DosageController {

		@RequestMapping(value="homeWorkWrite.hw" )
		public String homeWorkWrite(HomeWork h) {

			System.out.println("호출됨");


			return "";

		}

}
	
}
