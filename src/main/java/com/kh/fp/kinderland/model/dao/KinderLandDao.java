package com.kh.fp.kinderland.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;

public interface KinderLandDao {

	Kinderland selectKin(SqlSessionTemplate sqlSession, SelectKinder sk);

}
