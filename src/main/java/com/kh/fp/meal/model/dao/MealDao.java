package com.kh.fp.meal.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

public interface MealDao {

	int dailymealCount(SqlSessionTemplate sqlSession);

}
