package com.kh.fp.meal.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.meal.model.dao.MealDao;
import com.kh.fp.meal.model.exception.MealException;
import com.kh.fp.meal.model.vo.Meal;
import com.kh.fp.member.model.vo.Attachment;

@Service
public class MealServiceImpl implements MealService{

	@Autowired
	private MealDao md;
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int dailymealCount(String day) {
		return md.dailymealCount(sqlSession,day);
	}

	@Override
	public int insertDailyMeal(Meal meal) throws MealException {
		int result = md.insertDailyMeal(sqlSession, meal);
		return result;
	}

	@Override
	public Meal getDailyMeal(Meal meal) throws MealException {
		return md.getDailyMeal(sqlSession,meal);
	}

	@Override
	public int insertAt(Attachment at) {
		int mealNo = md.selectMealNum(sqlSession);
		at.setMealNo(mealNo);
		int insertAt = md.insertAtt(sqlSession,at);
		return insertAt;
	}

	@Override
	public ArrayList<Attachment> selectPic(String day) throws MealException {
		ArrayList<Attachment> piclist = null;
		piclist = md.selectPic(sqlSession,day);
		return piclist;
	}

	@Override
	public ArrayList<Meal> monthMealList(String day) throws MealException {
		ArrayList<Meal> mlist = null;
		mlist = md.monthMealList(sqlSession,day);
		return mlist;
	}

	
}
