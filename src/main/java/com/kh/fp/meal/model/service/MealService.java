package com.kh.fp.meal.model.service;

import com.kh.fp.meal.model.exception.MealException;
import com.kh.fp.meal.model.vo.Meal;
import com.kh.fp.member.model.vo.Attachment;

public interface MealService {

	int dailymealCount();

	int insertDailyMeal(Meal meal) throws MealException;

	Meal getDailyMeal(Meal meal) throws MealException;

	int insertAt(Attachment at);

}
