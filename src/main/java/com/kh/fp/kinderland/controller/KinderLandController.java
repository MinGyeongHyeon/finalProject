package com.kh.fp.kinderland.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.kinderland.model.service.KinderLandService;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;

@Controller
public class KinderLandController {
	
	@Autowired
	private KinderLandService ks ;

	
	@RequestMapping(value="selectKin.kl" ,produces = "application/text; charset=utf8")
	public ModelAndView selectKin(SelectKinder sk , ModelAndView mv ) {
		
		Kinderland kd = ks.selectKin(sk);
		
		
		
		mv.addObject("kd" , kd);
		mv.setViewName("jsonView");
		
	
		return mv;
	}
}
