package com.kh.fp.dosage.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.fp.dosage.model.dao.DosageDao;
import com.kh.fp.dosage.model.vo.DosageVO;

public class DosageServiceImpl implements DosageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DosageDao dd;

	@Override
	public int insertDosageRequest(DosageVO d) {

		return dd.insertDosageRequest(sqlSession, d);
	}

}
