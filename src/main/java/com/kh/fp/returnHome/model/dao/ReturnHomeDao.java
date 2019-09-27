package com.kh.fp.returnHome.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.returnHome.model.exception.ReturnHomeInsertException;
import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.ChildrenClass;
import com.kh.fp.returnHome.model.vo.KinderClass;
import com.kh.fp.returnHome.model.vo.ReturnHome;

public interface ReturnHomeDao {

	ArrayList<Children> selectChildrenName(SqlSessionTemplate sqlSession, KinderClass kc);

	ArrayList<ChildrenClass> selectParentChildrens(SqlSessionTemplate sqlSession, ChildrenClass cc);

	int insertReturnHome(SqlSessionTemplate sqlSession, String[] selectChild, ReturnHome rh) throws ReturnHomeInsertException;

	ArrayList<ReturnHome> selectReturnHomeList(SqlSessionTemplate sqlSession, KinderClass kc, PageInfo pi);

	ArrayList<ReturnHome> selectParentsReturnHomeList(SqlSessionTemplate sqlSession, ChildrenClass cc, PageInfo pi);

	int countListAll(SqlSessionTemplate sqlSession, KinderClass kc);

	int parentsCountList(SqlSessionTemplate sqlSession, ChildrenClass cc);

	ArrayList<ReturnHome> selectReturnHomeDetail(SqlSessionTemplate sqlSession, int homeNo);

	ArrayList<Children> selectKinderChildrenName(SqlSessionTemplate sqlSession, KinderClass kc);

	int countList(SqlSessionTemplate sqlSession, KinderClass kc);

	ArrayList<ReturnHome> selectMasterReturnHomeList(SqlSessionTemplate sqlSession, KinderClass kc, PageInfo pi);

	int updateReading(SqlSessionTemplate sqlSession, int homeNo);

	ArrayList<Children> searchChildrenName(SqlSessionTemplate sqlSession, KinderClass kc);

	ArrayList<Children> searchKinderChildrenName(SqlSessionTemplate sqlSession, KinderClass kc);

}
