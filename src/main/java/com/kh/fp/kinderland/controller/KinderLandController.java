package com.kh.fp.kinderland.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.kinderland.model.service.KinderLandService;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;

@Controller
public class KinderLandController {
	
	@Autowired
	private KinderLandService ks ;

	
	@RequestMapping(value="selectKin.kl")
	public ModelAndView selectKin(SelectKinder sk , ModelAndView mv ) {
		System.out.println("들어온 sk 값 : " + sk);
		
		ArrayList<Kinderland> list = ks.selectKin(sk);
		
		
		System.out.println("받아온 kd 의 값 : " + list);
		
		
		
		
		mv.addObject("list" , list);
		mv.setViewName("jsonView");
		
	
		return mv;
	}
	
	@RequestMapping(value="selectKinderclass.kl")
	public ModelAndView selectKinderclass(Kinderland kl , ModelAndView mv) {
		
		
		ArrayList<KinGardenClasses> list2 = ks.selectKinderclass(kl);
		
		System.out.println("받아온 list 의 값 : " + list2);
		
		mv.addObject("list2" , list2);
		mv.setViewName("jsonView");
		
		
		return mv;
	}
	
}
