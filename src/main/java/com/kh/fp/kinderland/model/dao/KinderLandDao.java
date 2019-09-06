package com.kh.fp.kinderland.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.member.model.vo.ChildrenInsert;

public interface KinderLandDao {

	ArrayList<Kinderland> selectKin(SqlSessionTemplate sqlSession, SelectKinder sk);

	ArrayList<KinGardenClasses> selectKinderclass(SqlSessionTemplate sqlSession, Kinderland kl);

	int insertChildren(SqlSessionTemplate sqlSession, ChildrenInsert ci);

}
