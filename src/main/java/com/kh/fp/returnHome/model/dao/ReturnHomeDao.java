package com.kh.fp.returnHome.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.returnHome.model.vo.Children;
import com.kh.fp.returnHome.model.vo.KinderClass;

public interface ReturnHomeDao {

	ArrayList<Children> selectChildrenName(SqlSessionTemplate sqlSession, KinderClass kc);

}
