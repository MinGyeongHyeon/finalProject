package com.kh.fp.kinderland.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.kinderland.model.dao.KinderLandDao;
import com.kh.fp.kinderland.model.vo.ChildrenClassInsert;
import com.kh.fp.kinderland.model.vo.ChildrenInsert;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.kinderland.model.vo.TeacherInsert;

@Service
public class KinderLandServiceImpl implements KinderLandService{
	
	@Autowired
	 private SqlSessionTemplate sqlSession;

	@Autowired
	private KinderLandDao kd;
	
	
	@Override
	public ArrayList<Kinderland> selectKin(SelectKinder sk) {
		

		return kd.selectKin(sqlSession,sk);
	}


	@Override
	public ArrayList<KinGardenClasses> selectKinderclass(Kinderland kl) {

		return kd.selectKinderclass(sqlSession , kl);
	}


	@Override
	public int insertChildren(ChildrenInsert ci) {

		return kd.insertChildren(sqlSession,ci);
	}


	@Override
	public int insertchildrenclass(ChildrenClassInsert ci) {

		return kd.insertchildrenclass(sqlSession,ci);
	}


	@Override
	public int updatechildrenclass(ChildrenClassInsert ci) {

		return kd.updatechildrenclass(sqlSession,ci);
	}


	@Override
	public int insertTeacher(TeacherInsert ti) {

		return kd.insertTeacher(sqlSession , ti);
	}

}
