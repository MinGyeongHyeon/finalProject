package com.kh.fp.kinderland.model.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.kh.fp.kinderland.model.vo.ChildrenClassInsert;
import com.kh.fp.kinderland.model.vo.ChildrenInsert;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderclass;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.kinderland.model.vo.TeacherInsert;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.OnOff;

public interface KinderLandService {

	ArrayList<Kinderland> selectKin(SelectKinder sk);

	ArrayList<KinGardenClasses> selectKinderclass(Kinderland kl);

	int insertChildren(ChildrenInsert ci);

	int insertchildrenclass(ChildrenClassInsert ci);

	int updatechildrenclass(ChildrenClassInsert ci);

	int insertTeacher(TeacherInsert ti);

	int insertteacherclass(ChildrenClassInsert ci);

	int updateteacherclass(ChildrenClassInsert ci);

	int menuupdate(OnOff oo);

	int kinderUpdate(KinderGarden kg);

	ArrayList kinderbanplus(int kinderNo);

	ArrayList kinderclassMax(ArrayList list);

	int KinderClassAdd(Kinderclass kc);

	int KinderClassDelete(Kinderclass kc);

	ArrayList KinderclassChange(Kinderclass kc);

	ArrayList KinderclassNames(Kinderclass kc);

	ArrayList KinderuserName(ArrayList list);




}
