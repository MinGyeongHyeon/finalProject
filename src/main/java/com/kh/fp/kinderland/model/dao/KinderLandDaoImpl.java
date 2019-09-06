package com.kh.fp.kinderland.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.member.model.vo.ChildrenInsert;

@Repository
public class KinderLandDaoImpl implements KinderLandDao{

	@Override
	public ArrayList<Kinderland> selectKin(SqlSessionTemplate sqlSession, SelectKinder sk) {
		

		return (ArrayList) sqlSession.selectList("KinderLand.selectckinder" , sk);
	}

	@Override
	public ArrayList<KinGardenClasses> selectKinderclass(SqlSessionTemplate sqlSession, Kinderland kl) {

		return (ArrayList) sqlSession.selectList("KinderLand.selectKinderclass", kl);
	}

	@Override
	public int insertChildren(SqlSessionTemplate sqlSession, ChildrenInsert ci) {

		return sqlSession.insert("KinderLand.insertChildren", ci);
	}

	
}
