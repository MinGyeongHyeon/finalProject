package com.kh.fp.returnHome.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.returnHome.model.dao.ReturnHomeDao;
import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.ChildrenClass;
import com.kh.fp.returnHome.model.vo.KinderClass;

@Service
public class ReturnHomeServiceImpl implements ReturnHomeService{
	
	@Autowired
	private ReturnHomeDao rhd;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public ArrayList<Children> selectChildrenName(KinderClass kc) {
		ArrayList<Children> list = rhd.selectChildrenName(sqlSession, kc);
		return list;
	}


	@Override
	public ArrayList<ChildrenClass> selectParentChildrens(ChildrenClass cc) {
		ArrayList<ChildrenClass> list = rhd.selectParentChildrens(sqlSession, cc);
		
		return list;
	}

	
}
