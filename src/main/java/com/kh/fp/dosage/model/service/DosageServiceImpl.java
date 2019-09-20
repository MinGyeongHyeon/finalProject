package com.kh.fp.dosage.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.dosage.model.dao.DosageDao;

@Service
public class DosageServiceImpl implements DosageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DosageDao dd;

/*
	@Override
	public int insertDosageRequest(Dosage d) {

		System.out.println("투약의뢰서 서비스 in!");

		int insertDosageRequest = dd.insertDosageRequest(sqlSession, d);

		return 0;
	}
*/

	//투약의뢰서 리스트 카운트
	@Override
	public int getListCount(int userNo) {

		return dd.getListCount(sqlSession, userNo);
	}



}
