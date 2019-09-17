package com.kh.fp.returnHome.model.service;

import java.util.ArrayList;

import com.kh.fp.returnHome.model.exception.ReturnHomeInsertException;
import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.ChildrenClass;
import com.kh.fp.returnHome.model.vo.KinderClass;
import com.kh.fp.returnHome.model.vo.ReturnHome;

public interface ReturnHomeService {

	ArrayList<Children> selectChildrenName(KinderClass kc);

	ArrayList<ChildrenClass> selectParentChildrens(ChildrenClass cc);

	int insertReturnHome(String[] selectChild, ReturnHome rh) throws ReturnHomeInsertException;

	ArrayList<ReturnHome> selectReturnHomeList(ArrayList<Children> list);

}
