package com.kh.fp.kinderland.model.service;

import java.util.ArrayList;

import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.member.model.vo.ChildrenInsert;

public interface KinderLandService {

	ArrayList<Kinderland> selectKin(SelectKinder sk);

	ArrayList<KinGardenClasses> selectKinderclass(Kinderland kl);

	int insertChildren(ChildrenInsert ci);

}
