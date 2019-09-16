package com.kh.fp.returnHome.model.service;

import java.util.ArrayList;

import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.KinderClass;

public interface ReturnHomeService {

	ArrayList<Children> selectChildrenName(KinderClass kc);

}
