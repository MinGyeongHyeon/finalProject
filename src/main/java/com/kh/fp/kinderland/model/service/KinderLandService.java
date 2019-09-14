package com.kh.fp.kinderland.model.service;

import java.util.ArrayList;

import com.kh.fp.kinderland.model.vo.ChildrenClassInsert;
import com.kh.fp.kinderland.model.vo.ChildrenInsert;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.kinderland.model.vo.TeacherInsert;

public interface KinderLandService {

	ArrayList<Kinderland> selectKin(SelectKinder sk);

	ArrayList<KinGardenClasses> selectKinderclass(Kinderland kl);

	int insertChildren(ChildrenInsert ci);

	int insertchildrenclass(ChildrenClassInsert ci);

	int updatechildrenclass(ChildrenClassInsert ci);

	int insertTeacher(TeacherInsert ti);

	int insertteacherclass(ChildrenClassInsert ci);

	int updateteacherclass(ChildrenClassInsert ci);

}
