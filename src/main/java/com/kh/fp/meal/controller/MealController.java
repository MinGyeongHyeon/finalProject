package com.kh.fp.meal.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.fp.common.CommonUtils;
import com.kh.fp.meal.model.exception.MealException;
import com.kh.fp.meal.model.service.MealService;
import com.kh.fp.meal.model.vo.Meal;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.member.model.vo.KinGardenClasses;

@Controller
@SessionAttributes("loginUser")
public class MealController {
	@Autowired
	private MealService ms;
	
	@RequestMapping(value="mealMain.ml")
	public String mealMainView(Model mv,Meal ml) {
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String day = date.format(today);
		mv.addAttribute("day",day);
		int meal = ms.dailymealCount();
		if(meal==0) {
			return "meal/meal2";
		}else {
			return "meal/meal";
			
		}
		
		
	}
	
	@RequestMapping(value="writeMeal.ml")
	public String writeMeal(Model mv) {
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String day = date.format(today);
		mv.addAttribute("day",day);
		return "meal/writeMeal";
	}
	
	
	@RequestMapping(value="writerMeal2.ml")
	public String multipleFileUpload(@RequestParam(name = "file") MultipartFile[] file, 
			HttpSession session, Model model, Meal mm,HttpServletRequest request) throws IllegalStateException, IOException{
		KinGardenClasses loginUser = (KinGardenClasses) session.getAttribute("teacherKing");
		int kinderNo = loginUser.getKinderNo(); //유치원 번호
		String[] mealT = {"오전","점심","오후"};
		int userNo = loginUser.getTeacherNo();
		String[] content = mm.getMealContent().split(",");
		Meal meal = null;
		
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String day = date.format(today);
		model.addAttribute("day",day);
		
		for(int i=0;i<file.length;i++) {
			meal = new Meal();
			
			meal.setMealContent(content[i]);
			meal.setMealType(mealT[i]);
			meal.setKinderNo(kinderNo);
			
			try {
				int insertresult = ms.insertDailyMeal(meal);
				if(insertresult > 0) {
					if(!file[i].getOriginalFilename().equals("")) {
						Attachment at = new Attachment();
						String root = request.getSession().getServletContext().getRealPath("resources");
						String filePath = root + "\\uploadFiles";
						String originFileName = file[i].getOriginalFilename();
						String ext = originFileName.substring(originFileName.lastIndexOf("."));
						String changeName = CommonUtils.getRandomString();
						String num = i+"";
						
						
						at.setOrigineName(originFileName);
						at.setChangeName(changeName);
						at.setFilePath(filePath);
						at.setAttachType("식단글");
						at.setFileLevel(num);
						at.setUserNo(userNo);
						file[i].transferTo(new File(filePath + "\\"+changeName+ext));
						int insertAttach = ms.insertAt(at);
					}
				} 
			} catch (MealException e) {
				e.printStackTrace();
			}
				
			
		}
		
		return "meal/meal";
	}
}
