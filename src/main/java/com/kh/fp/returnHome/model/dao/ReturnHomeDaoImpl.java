package com.kh.fp.returnHome.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.returnHome.model.exception.ReturnHomeInsertException;
import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.ChildrenClass;
import com.kh.fp.returnHome.model.vo.KinderClass;
import com.kh.fp.returnHome.model.vo.ReturnHome;

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
		return list;
	}

	@Override
	public int insertReturnHome(SqlSessionTemplate sqlSession, String[] selectChild, ReturnHome rh) throws ReturnHomeInsertException {
		int result = 0;
		int result1 = 0;
		int result2 = 0;
		for(int i = 0; i < selectChild.length; i++) {
			result = 0;
			rh.setChildrenNo(Integer.parseInt(selectChild[i]));
			System.out.println("DAO에서 출력 : " + rh);
			result1 = sqlSession.insert("ReturnHome.insertReturnHome1", rh);
			if(result1 > 0) {
				result2 = sqlSession.insert("ReturnHome.insertReturnHome2", rh);
			}
			if(result2 > 0) {
				result = 1;
			}
			if(result == 0) {
				throw new ReturnHomeInsertException("귀가동의서 등록 실패");
			}
		}
		
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<ReturnHome> selectReturnHomeList(SqlSessionTemplate sqlSession, ArrayList<Children> list) {
		ArrayList<ReturnHome> rhList = (ArrayList) sqlSession.selectList("ReturnHome.selctReturnHomeList", list);
		return rhList;
	}



}
