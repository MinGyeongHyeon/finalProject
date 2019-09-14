package com.kh.fp.kinderland.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.kinderland.model.vo.ChildrenClassInsert;
import com.kh.fp.kinderland.model.vo.ChildrenInsert;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.kinderland.model.vo.TeacherInsert;

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

	@Override
	public int insertchildrenclass(SqlSessionTemplate sqlSession, ChildrenClassInsert ci) {

		return sqlSession.insert("KinderLand.insertchildrenclass",ci);
	}

	@Override
	public int updatechildrenclass(SqlSessionTemplate sqlSession, ChildrenClassInsert ci) {
		
		return sqlSession.update("KinderLand.updatechildrenclass" , ci);
	}

	@Override
	public int insertTeacher(SqlSessionTemplate sqlSession, TeacherInsert ti) {

		return sqlSession.insert("KinderLand.insertTeacher" , ti);
	}

	@Override
	public int insertteacherclass(SqlSessionTemplate sqlSession, ChildrenClassInsert ci) {

		return sqlSession.insert("KinderLand.insertTeacgerClass", ci);
	}

	@Override
	public int updateteacherclass(SqlSessionTemplate sqlSession, ChildrenClassInsert ci) {

		return sqlSession.update("KinderLand.updateteacherclass",ci);
	}

	
}
