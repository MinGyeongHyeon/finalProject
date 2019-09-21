package com.kh.fp.meal.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.meal.model.service.MealService;
import com.kh.fp.meal.model.vo.Meal;

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
}
