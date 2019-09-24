package com.kh.fp.kinderland.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.kinderland.model.service.KinderLandService;
import com.kh.fp.kinderland.model.vo.ChildrenClassInsert;
import com.kh.fp.kinderland.model.vo.ChildrenInsert;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderclass;
import com.kh.fp.kinderland.model.vo.Kinderclasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.kinderland.model.vo.TeacherInsert;
import com.kh.fp.member.model.service.MemberService;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.member.model.vo.OnOff;

@Controller
@SessionAttributes("kga")
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
		
		KinderGarden kga = null;
		 
		 kga = ms.selectKinderName(kg.getKinderNo());
		
		
		if(result > 0) {
			model.addAttribute("kga",kga);
			model.addAttribute("msg","성공적으로 변경 되었습니다.");
			
		}else {
			
			model.addAttribute("msg", "변경 도중 오류가 발생하였습니다. 다시 시도해주세요.");
			
			
		}
		
		return "kingteacher/kindergardenChange";
	}
	
	@RequestMapping(value="kinderbanplus.kl")
	public String kinderbanplus(Model model , int kinderNo) {
		
		ArrayList list = ks.kinderbanplus(kinderNo);
	
		ArrayList list2 = ks.kinderclassMax(list);
		
		model.addAttribute("list2",list2);
		
		
		return "kingteacher/banplus";
	}
	
	@RequestMapping(value="classAdd.kl")
	public String KinderClassAdd(Model model,Kinderclass kc) {
		
		int result = ks.KinderClassAdd(kc);
		
		if(result > 0) {
			kinderbanplus(model , kc.getKinderNo());
		}
		
		return "kingteacher/banplus";
	}
	
	@RequestMapping(value="classDelete.kl")
	public ModelAndView KinserClassDelete(ModelAndView mv, Kinderclass kc ) {
		
					
		int result = ks.KinderClassDelete(kc);
		mv.addObject("result", result);
		mv.setViewName("jsonView");
		
		return mv;
		
	}
	
	@RequestMapping(value="classchange.kl")
	public String KinderclassChange(Model model , Kinderclass kc) {
		System.out.println("kc 의 값 : " + kc);
		
		ArrayList list = ks.KinderclassChange(kc);

		ArrayList list2 = ks.KinderclassNames(kc);
	
		ArrayList list3 = ks.KinderuserName(list);

		
		model.addAttribute("list",list);
		model.addAttribute("list2",list2);
		model.addAttribute("list3" ,list3);

		return "kingteacher/banwindow";
	}
	
	@RequestMapping(value="kinderchangeClass.kl")
	public ModelAndView kinderchangeClass(ModelAndView mv ,Kinderclasses kc ) {
		
		
		int result = ks.kinderchangeClass(kc);
		
		mv.addObject("result" , result);
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@RequestMapping(value="deletechildrenclass.kl")
	public ModelAndView deletechildrenclass(ModelAndView mv , ChildrenClassInsert ci) {
		
		int result = ks.deletechildrenclass(ci);
		
		mv.addObject("result",result);
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@RequestMapping(value="deleteteacherclass")
	public ModelAndView delteteacherclass(ModelAndView mv , TeacherInsert ti) {
		
		int result = ks.delteteacherclass(ti);
		
		mv.addObject("result",result);
		mv.setViewName("jsonView");
		
		return mv;
	}
	

	
}
