package com.kh.fp.meal.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.meal.model.exception.MealException;
import com.kh.fp.meal.model.vo.Meal;
import com.kh.fp.member.model.vo.Attachment;

@Repository
public class MealDaoImpl implements MealDao{

	@Override
	public int dailymealCount(SqlSessionTemplate sqlSession) {
		int mealcount = 0;
		mealcount = sqlSession.selectOne("Meal.dailymealCount");
		return mealcount;
	}

	@Override
	public int insertDailyMeal(SqlSessionTemplate sqlSession, Meal meal) throws MealException {
		int result = 0;
		result = sqlSession.insert("Meal.insertDailyMeal", meal);
		if(result <=0) {
			throw new MealException("식단표 작성 실패!");
		}
		return result;
	}

	@Override
	public Meal getDailyMeal(SqlSessionTemplate sqlSession,Meal meal) throws MealException {
		Meal result = null;
		result = sqlSession.selectOne("Meal.selectDailyMeal",meal);
		if(result == null) {
			throw new MealException("식단표 오류 ");
		}
		return result;
	}

	@Override
	public int selectMealNum(SqlSessionTemplate sqlSession) {
		int num = sqlSession.selectOne("Meal.selectNum");
		return num;
	}

	@Override
	public int insertAtt(SqlSessionTemplate sqlSession, Attachment at) {
		int content = sqlSession.insert("Meal.insertAt",at);
		return content;
	}

}
