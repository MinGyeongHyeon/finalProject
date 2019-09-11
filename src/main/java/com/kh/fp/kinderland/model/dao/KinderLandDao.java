package com.kh.fp.kinderland.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.kinderland.model.vo.ChildrenClassInsert;
import com.kh.fp.kinderland.model.vo.ChildrenInsert;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.kinderland.model.vo.TeacherInsert;

public interface KinderLandDao {

	ArrayList<Kinderland> selectKin(SqlSessionTemplate sqlSession, SelectKinder sk);

	ArrayList<KinGardenClasses> selectKinderclass(SqlSessionTemplate sqlSession, Kinderland kl);

	int insertChildren(SqlSessionTemplate sqlSession, ChildrenInsert ci);

	int insertchildrenclass(SqlSessionTemplate sqlSession, ChildrenClassInsert ci);

	int updatechildrenclass(SqlSessionTemplate sqlSession, ChildrenClassInsert ci);

	int insertTeacher(SqlSessionTemplate sqlSession, TeacherInsert ti);

}
