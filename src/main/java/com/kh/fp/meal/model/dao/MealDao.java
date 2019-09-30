package com.kh.fp.meal.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.meal.model.exception.MealException;
import com.kh.fp.meal.model.vo.Meal;
import com.kh.fp.member.model.vo.Attachment;

public interface MealDao {

	int dailymealCount(SqlSessionTemplate sqlSession);

	int insertDailyMeal(SqlSessionTemplate sqlSession, Meal meal) throws MealException;

	Meal getDailyMeal(SqlSessionTemplate sqlSession, Meal meal) throws MealException;

	int selectMealNum(SqlSessionTemplate sqlSession);

	int insertAtt(SqlSessionTemplate sqlSession, Attachment at);

	ArrayList<Attachment> selectPic(SqlSessionTemplate sqlSession, String day) throws MealException;

	ArrayList<Meal> monthMealList(SqlSessionTemplate sqlSession, String day) throws MealException;

}
