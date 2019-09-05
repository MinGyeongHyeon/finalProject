package com.kh.fp.kinderland.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;

@Repository
public class KinderLandDaoImpl implements KinderLandDao{

	@Override
	public Kinderland selectKin(SqlSessionTemplate sqlSession, SelectKinder sk) {
		

		return sqlSession.selectOne("KinderLand.selectckinder" , sk);
	}

	
}
