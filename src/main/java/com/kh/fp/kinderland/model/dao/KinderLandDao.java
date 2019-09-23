package com.kh.fp.kinderland.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.kinderland.model.vo.ChildrenClassInsert;
import com.kh.fp.kinderland.model.vo.ChildrenInsert;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderclass;
import com.kh.fp.kinderland.model.vo.Kinderclasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.kinderland.model.vo.TeacherInsert;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.OnOff;

public interface KinderLandDao {

	ArrayList<Kinderland> selectKin(SqlSessionTemplate sqlSession, SelectKinder sk);

	ArrayList<KinGardenClasses> selectKinderclass(SqlSessionTemplate sqlSession, Kinderland kl);

	int insertChildren(SqlSessionTemplate sqlSession, ChildrenInsert ci);

	int insertchildrenclass(SqlSessionTemplate sqlSession, ChildrenClassInsert ci);

	int updatechildrenclass(SqlSessionTemplate sqlSession, ChildrenClassInsert ci);

	int insertTeacher(SqlSessionTemplate sqlSession, TeacherInsert ti);

	int insertteacherclass(SqlSessionTemplate sqlSession, ChildrenClassInsert ci);

	int updateteacherclass(SqlSessionTemplate sqlSession, ChildrenClassInsert ci);

	int menuupdate(SqlSessionTemplate sqlSession, OnOff oo);

	int kinderUpdate(SqlSessionTemplate sqlSession, KinderGarden kg);

	ArrayList kinderbanplus(SqlSessionTemplate sqlSession, int kinderNo);

	ArrayList kinderclassMax(SqlSessionTemplate sqlSession, ArrayList list);

	int KinderClassAdd(SqlSessionTemplate sqlSession, Kinderclass kc);

	int KinderClassDelete(SqlSessionTemplate sqlSession, Kinderclass kc);

	ArrayList KinderclassChange(SqlSessionTemplate sqlSession, Kinderclass kc);

	ArrayList KinderclassNames(SqlSessionTemplate sqlSession, Kinderclass kc);

	ArrayList KinderuserName(SqlSessionTemplate sqlSession, ArrayList list);

	int kinderchangeClass(SqlSessionTemplate sqlSession, Kinderclasses kc);

}
