package com.kh.fp.kinderland.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.kinderland.model.service.KinderLandService;
import com.kh.fp.kinderland.model.vo.ChildrenClassInsert;
import com.kh.fp.kinderland.model.vo.ChildrenInsert;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.kinderland.model.vo.TeacherInsert;
import com.kh.fp.member.model.service.MemberService;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.member.model.vo.OnOff;

@Controller
public class KinderLandController {
	
	@Autowired
	private KinderLandService ks ;
	
	@Autowired
	private MemberService ms;

	
	@RequestMapping(value="selectKin.kl")
	public ModelAndView selectKin(SelectKinder sk , ModelAndView mv ) {
		
		ArrayList<Kinderland> list = ks.selectKin(sk);
	
		
		mv.addObject("list" , list);
		mv.setViewName("jsonView");
		
	
		return mv;
	}
	
	@RequestMapping(value="selectKinderclass.kl")
	public ModelAndView selectKinderclass(Kinderland kl , ModelAndView mv) {

		ArrayList<KinGardenClasses> list2 = ks.selectKinderclass(kl);
		
		
		mv.addObject("list2" , list2);
		mv.setViewName("jsonView");
		
		
		return mv;
	}
	
	@RequestMapping(value="insertchildren.kl")
	public ModelAndView insetChildren(ChildrenInsert ci, ModelAndView mv) {
		
			
		int result = ks.insertChildren(ci);
		
		mv.setViewName("jsonView");
		
		
		return mv;
	}
	
	@RequestMapping(value="insertTacher.kl")
	public ModelAndView insertTeacher(TeacherInsert ti ,ModelAndView mv) {
		
		int result = ks.insertTeacher(ti);
		
		mv.setViewName("jsonView");
		
		return mv;
		
	}
	
	@RequestMapping(value="insertchildrenclass.kl")
	public ModelAndView insertchildrenclass(ChildrenClassInsert ci, ModelAndView mv) {
		
		
		int result = ks.insertchildrenclass(ci);
		
		if(result > 0) {
 
			int update = ks.updatechildrenclass(ci);
		}
		
		mv.addObject("result",result);
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@RequestMapping(value="insertteacherclass.kl")
	public ModelAndView insertteacherclass(ChildrenClassInsert ci , ModelAndView mv) {
		
		
		int result = ks.insertteacherclass(ci);
		
		if(result > 0) {
			
			int update = ks.updateteacherclass(ci);
			
		}
		
		mv.addObject("result",result);
		mv.setViewName("jsonView");
		
		
		return mv;
	}
	@RequestMapping(value="menuOnOff.kl")
	public String menuupdate(Model model , OnOff oo) {
		
		int result = ks.menuupdate(oo);
		
		if(result > 0) {
			
			model.addAttribute("msg","성공적으로 변경 되었습니다.");
			
		}else {
			
			model.addAttribute("msg","변경 도중 오류가 발생하였습니다. 다시 시도해주세요.");
			
		}
		
		
		
		return "kingteacher/menumanagement";
	}
	
	@RequestMapping(value="kindermenu.kl")
	public String kindermenu(Model model  , int kinderNo) {
		
		Member loginUser = new Member();
		
		loginUser.setUserNo(kinderNo);
		
		OnOff of =  ms.selectOnOff(loginUser);
		
		model.addAttribute("of",of);
		
		return "kingteacher/menumanagement";
	}
	
	@RequestMapping(value="kinderchange.kl")
	public String kinderchange(Model model , int kinderNo) {
		
		Member loginUser = new Member();
		
		loginUser.setUserNo(kinderNo);
		
		OnOff of = ms.selectOnOff(loginUser);
		
		model.addAttribute("of",of);
	
		return "kingteacher/kindergardenChange";
		
	}
	
	@RequestMapping(value="kinderUpdate.kl")
	public String KinderUpdate(Model model ,KinderGarden kg) {
		
		kg.setAddress(kg.getSido()+ " " + kg.getSigungu() + " " + kg.getAddress3());
		
		
		int result = ks.kinderUpdate(kg);
		
		if(result > 0) {
			
			model.addAttribute("msg","성공적으로 변경 되었습니다.");
			
		}else {
			
			model.addAttribute("msg", "변경 도중 오류가 발생하였습니다. 다시 시도해주세요.");
			
			
		}
		
		return "kingteacher/kindergardenChange";
	}
	
	

	
}
