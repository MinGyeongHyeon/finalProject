package com.kh.fp.returnHome.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.fp.returnHome.model.dao.ReturnHomeDao;
import com.kh.fp.returnHome.model.exception.ReturnHomeInsertException;
import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.ChildrenClass;
import com.kh.fp.returnHome.model.vo.KinderClass;
import com.kh.fp.returnHome.model.vo.ReturnHome;

@Service
public class ReturnHomeServiceImpl implements ReturnHomeService{
	
	@Autowired
	private ReturnHomeDao rhd;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Autowired private DataSourceTransactionManager transactionManager;
	 
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


	@Override
	public int insertReturnHome(String[] selectChild, ReturnHome rh) throws ReturnHomeInsertException {
		int result = 0;
		
		result = rhd.insertReturnHome(sqlSession, selectChild, rh);
		
		
		return result;
	}


	@Override
	public ArrayList<ReturnHome> selectReturnHomeList(ArrayList<Children> list) {
		ArrayList<ReturnHome> rhList = rhd.selectReturnHomeList(sqlSession, list);
		
		return rhList;
	}

	
}
