package com.kh.fp.pay.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.pay.model.vo.Kindergarden;

public interface PayDao {

	ArrayList<Kindergarden> selectGardenInfo(SqlSessionTemplate sqlSession, int kinderNo);

}
