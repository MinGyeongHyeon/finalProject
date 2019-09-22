package com.kh.fp.meal.model.service;

import com.kh.fp.meal.model.exception.MealException;
import com.kh.fp.meal.model.vo.Meal;

public interface MealService {

	int dailymealCount();

	int insertDailyMeal(Meal meal) throws MealException;

	Meal getDailyMeal(Meal meal) throws MealException;

}
