package com.kh.fp.kinderland.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.kinderland.model.dao.KinderLandDao;
import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;

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

}
