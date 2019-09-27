package com.kh.fp.returnHome.model.service;

import java.util.ArrayList;

import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.returnHome.model.exception.ReturnHomeInsertException;
import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.ChildrenClass;
import com.kh.fp.returnHome.model.vo.KinderClass;
import com.kh.fp.returnHome.model.vo.ReturnHome;

public interface ReturnHomeService {

	ArrayList<Children> selectChildrenName(KinderClass kc);

	ArrayList<ChildrenClass> selectParentChildrens(ChildrenClass cc);

	int insertReturnHome(String[] selectChild, ReturnHome rh) throws ReturnHomeInsertException;

	ArrayList<ReturnHome> selectReturnHomeList(KinderClass kc, PageInfo pi);

	ArrayList<ReturnHome> selectParentsReturnHomeList(ChildrenClass cc, PageInfo pi);

	int countListAll(KinderClass kc);

	int parentsCountList(ChildrenClass cc);

	ArrayList<ReturnHome> selectReturnHomeDetail(int homeNo);

	ArrayList<Children> selectKinderChildrenName(KinderClass kc);

	int countList(KinderClass kc);

	ArrayList<ReturnHome> selectMasterReturnHomeList(KinderClass kc, PageInfo pi);

	int updateReading(int homeNo);

	ArrayList<Children> searchChildrenName(KinderClass kc);

	ArrayList<Children> searchKinderChildrenName(KinderClass kc);


}
