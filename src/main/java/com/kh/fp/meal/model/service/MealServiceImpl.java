package com.kh.fp.meal.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.meal.model.dao.MealDao;
import com.kh.fp.meal.model.exception.MealException;
import com.kh.fp.meal.model.vo.Meal;

@Service
public class MealServiceImpl implements MealService{

	@Autowired
	private MealDao md;
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int dailymealCount() {
		return md.dailymealCount(sqlSession);
	}

	@Override
	public int insertDailyMeal(Meal meal) throws MealException {
		int result = md.insertDailyMeal(sqlSession, meal);
		System.out.println("서비스 리절트 : "+result);
		return result;
	}

	@Override
	public Meal getDailyMeal(Meal meal) throws MealException {
		return md.getDailyMeal(sqlSession,meal);
	}

	
}
