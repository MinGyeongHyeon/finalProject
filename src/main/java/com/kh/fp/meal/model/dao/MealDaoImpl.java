package com.kh.fp.meal.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MealDaoImpl implements MealDao{

	@Override
	public int dailymealCount(SqlSessionTemplate sqlSession) {
		int mealcount = 0;
		mealcount = sqlSession.selectOne("Meal.dailymealCount");
		return mealcount;
	}

}
