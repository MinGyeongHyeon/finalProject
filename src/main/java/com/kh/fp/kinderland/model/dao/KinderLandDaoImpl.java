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
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.OnOff;

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

	@Override
	public int menuupdate(SqlSessionTemplate sqlSession, OnOff oo) {

		return sqlSession.update("KinderLand.menuupdate" , oo);
	}

	@Override
	public int kinderUpdate(SqlSessionTemplate sqlSession, KinderGarden kg) {

		return sqlSession.update("KinderLand.kinderUpdate",kg);
	}

	@Override
	public ArrayList kinderbanplus(SqlSessionTemplate sqlSession, int kinderNo) {

		return (ArrayList) sqlSession.selectList("KinderLand.kinderbanplus",kinderNo);
	}

	@Override
	public ArrayList kinderclassMax(SqlSessionTemplate sqlSession, ArrayList list) {

		ArrayList list2 = new ArrayList();
		
		System.out.println("list 사이즈  "+ list.size());
		
		for(int i = 0 ; i < list.size(); i++) {
			
			list2.add(sqlSession.selectOne("KinderLand.kinderclassMax",list.get(i)));
			
		}
		
		return list2;
	}

	
}
