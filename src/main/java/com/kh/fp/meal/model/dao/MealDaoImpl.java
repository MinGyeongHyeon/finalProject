package com.kh.fp.meal.model.dao;

import java.util.ArrayList;

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

	@Override
	public ArrayList<Attachment> selectPic(SqlSessionTemplate sqlSession, String day) throws MealException {
		ArrayList<Attachment> list = (ArrayList)sqlSession.selectList("Meal.selectList", day);
		if(list == null) {
			throw new MealException("식단표 사진 불러오기 실패!");
		}
		return list;
	}

	@Override
	public ArrayList<Meal> monthMealList(SqlSessionTemplate sqlSession, String day) throws MealException {
		ArrayList<Meal> list = (ArrayList)sqlSession.selectList("Meal.monthMealList",day);
		if(list == null) {
			throw new MealException("월별식단표 조회 실패");
		}
		return list;
	}

}
