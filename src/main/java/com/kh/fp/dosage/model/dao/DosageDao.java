package com.kh.fp.dosage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.dosage.model.vo.DosageVO;

public interface DosageDao {

	int insertDosageRequest(SqlSessionTemplate sqlSession, DosageVO d);

}
