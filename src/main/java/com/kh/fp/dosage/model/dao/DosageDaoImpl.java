package com.kh.fp.dosage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.dosage.model.vo.DosageVO;

public class DosageDaoImpl implements DosageDao{

	@Override
	public int insertDosageRequest(SqlSessionTemplate sqlSession, DosageVO d) {

		return sqlSession.insert("Dosage.insertDosageRequest", d);
	}

}
