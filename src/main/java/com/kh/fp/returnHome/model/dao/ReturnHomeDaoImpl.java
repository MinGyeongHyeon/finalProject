package com.kh.fp.returnHome.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.ChildrenClass;
import com.kh.fp.returnHome.model.vo.KinderClass;

@Repository
public class ReturnHomeDaoImpl implements ReturnHomeDao{

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Children> selectChildrenName(SqlSessionTemplate sqlSession, KinderClass kc) {
		ArrayList<Children> list = (ArrayList) sqlSession.selectList("ReturnHome.selectChildrenName", kc);
		
		
		
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<ChildrenClass> selectParentChildrens(SqlSessionTemplate sqlSession, ChildrenClass cc) {
		ArrayList<ChildrenClass> list = (ArrayList) sqlSession.selectList("ReturnHome.selectParentChildrens", cc);
		System.out.println("list출력" + list);
		return list;
	}


}
