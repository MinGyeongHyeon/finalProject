package com.kh.fp.kinderland.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.kinderland.model.dao.KinderLandDao;
import com.kh.fp.kinderland.model.vo.ChildrenClassInsert;
import com.kh.fp.kinderland.model.vo.ChildrenInsert;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderclass;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;
import com.kh.fp.kinderland.model.vo.TeacherInsert;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.OnOff;

@Service
public class KinderLandServiceImpl implements KinderLandService{
	
	@Autowired
	 private SqlSessionTemplate sqlSession;

	@Autowired
	private KinderLandDao kd;
	
	
	@Override
	public ArrayList<Kinderland> selectKin(SelectKinder sk) {
		

		return kd.selectKin(sqlSession,sk);
	}


	@Override
	public ArrayList<KinGardenClasses> selectKinderclass(Kinderland kl) {

		return kd.selectKinderclass(sqlSession , kl);
	}


	@Override
	public int insertChildren(ChildrenInsert ci) {

		return kd.insertChildren(sqlSession,ci);
	}


	@Override
	public int insertchildrenclass(ChildrenClassInsert ci) {

		return kd.insertchildrenclass(sqlSession,ci);
	}


	@Override
	public int updatechildrenclass(ChildrenClassInsert ci) {

		return kd.updatechildrenclass(sqlSession,ci);
	}


	@Override
	public int insertTeacher(TeacherInsert ti) {

		return kd.insertTeacher(sqlSession , ti);
	}


	@Override
	public int insertteacherclass(ChildrenClassInsert ci) {

		return kd.insertteacherclass(sqlSession,ci);
	}


	@Override
	public int updateteacherclass(ChildrenClassInsert ci) {

		return kd.updateteacherclass(sqlSession,ci);
	}


	@Override
	public int menuupdate(OnOff oo) {

		return kd.menuupdate(sqlSession,oo);
	}


	@Override
	public int kinderUpdate(KinderGarden kg) {

		return kd.kinderUpdate(sqlSession, kg);
	}


	@Override
	public ArrayList kinderbanplus(int kinderNo) {

		return kd.kinderbanplus(sqlSession,kinderNo);
	}


	@Override
	public ArrayList kinderclassMax(ArrayList list) {

		return kd.kinderclassMax(sqlSession,list);
	}


	@Override
	public int KinderClassAdd(Kinderclass kc) {

		return kd.KinderClassAdd(sqlSession,kc);
	}

}
