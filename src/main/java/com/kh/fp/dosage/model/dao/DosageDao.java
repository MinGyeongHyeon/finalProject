package com.kh.fp.dosage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.dosage.model.vo.Dosage;


public interface DosageDao {

	int insertDosageRequest(SqlSessionTemplate sqlSession, Dosage d);

	//투약의뢰서 리스트 카운트
	int getListCount(SqlSessionTemplate sqlSession, int userNo);

}
