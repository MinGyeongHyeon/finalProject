package com.kh.fp.meal.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.meal.model.exception.MealException;
import com.kh.fp.meal.model.vo.Meal;

public interface MealDao {

	int dailymealCount(SqlSessionTemplate sqlSession);

	int insertDailyMeal(SqlSessionTemplate sqlSession, Meal meal) throws MealException;

	Meal getDailyMeal(SqlSessionTemplate sqlSession, Meal meal) throws MealException;

}
