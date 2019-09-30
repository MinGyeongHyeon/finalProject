package com.kh.fp.meal.model.service;

import java.util.ArrayList;

import com.kh.fp.meal.model.exception.MealException;
import com.kh.fp.meal.model.vo.Meal;
import com.kh.fp.member.model.vo.Attachment;

public interface MealService {

	int dailymealCount(String day);

	int insertDailyMeal(Meal meal) throws MealException;

	Meal getDailyMeal(Meal meal) throws MealException;

	int insertAt(Attachment at);

	ArrayList<Attachment> selectPic(String day) throws MealException;

	ArrayList<Meal> monthMealList(String day) throws MealException;

}
