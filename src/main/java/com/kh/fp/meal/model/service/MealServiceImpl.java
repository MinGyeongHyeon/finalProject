package com.kh.fp.meal.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.meal.model.dao.MealDao;

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
}
