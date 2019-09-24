package com.kh.fp.returnHome.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.fp.note.model.vo.PageInfo;
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
		int result = rhd.insertReturnHome(sqlSession, selectChild, rh);

		return result;
	}

	@Override
	public ArrayList<ReturnHome> selectReturnHomeList(KinderClass kc, PageInfo pi) {
		ArrayList<ReturnHome> rhList = rhd.selectReturnHomeList(sqlSession, kc, pi);
		return rhList;
	}

	@Override
	public ArrayList<ReturnHome> selectParentsReturnHomeList(ChildrenClass cc, PageInfo pi) {
		ArrayList<ReturnHome> rhList = rhd.selectParentsReturnHomeList(sqlSession, cc, pi);
		return rhList;
	}


	@Override
	public int countListAll(KinderClass kc) {
		int result = rhd.countListAll(sqlSession, kc);
		return result;
	}

	@Override
	public int parentsCountList(ChildrenClass cc) {
		int result = rhd.parentsCountList(sqlSession, cc);
		return result;
	}

	@Override
	public ArrayList<ReturnHome> selectReturnHomeDetail(int homeNo) {
		ArrayList<ReturnHome> rhList = rhd.selectReturnHomeDetail(sqlSession, homeNo);
		return rhList;
	}

	@Override
	public ArrayList<Children> selectKinderChildrenName(KinderClass kc) {
		ArrayList<Children> list = rhd.selectKinderChildrenName(sqlSession, kc);
		return list;
	}

	@Override
	public int countList(KinderClass kc) {
		int result = rhd.countList(sqlSession, kc);
		return result;
	}

	@Override
	public ArrayList<ReturnHome> selectMasterReturnHomeList(KinderClass kc, PageInfo pi) {
		ArrayList<ReturnHome> rhList = rhd.selectMasterReturnHomeList(sqlSession, kc, pi);
		return rhList;
	}

	@Override
	public int updateReading(int homeNo) {
		int result = rhd.updateReading(sqlSession, homeNo);
		return result;
	}


	
}
