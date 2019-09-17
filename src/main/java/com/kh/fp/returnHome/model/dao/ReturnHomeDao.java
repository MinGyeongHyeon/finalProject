package com.kh.fp.returnHome.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.returnHome.model.exception.ReturnHomeInsertException;
import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.ChildrenClass;
import com.kh.fp.returnHome.model.vo.KinderClass;
import com.kh.fp.returnHome.model.vo.ReturnHome;

public interface ReturnHomeDao {

	ArrayList<Children> selectChildrenName(SqlSessionTemplate sqlSession, KinderClass kc);

	ArrayList<ChildrenClass> selectParentChildrens(SqlSessionTemplate sqlSession, ChildrenClass cc);

	int insertReturnHome(SqlSessionTemplate sqlSession, String[] selectChild, ReturnHome rh) throws ReturnHomeInsertException;

	ArrayList<ReturnHome> selectReturnHomeList(SqlSessionTemplate sqlSession, ArrayList<Children> list);


}
