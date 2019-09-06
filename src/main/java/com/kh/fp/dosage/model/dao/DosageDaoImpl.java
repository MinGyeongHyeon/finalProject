package com.kh.fp.dosage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.dosage.model.vo.DosageVO;

@Repository
public class DosageDaoImpl implements DosageDao{

	@Override
	public int insertDosageRequest(SqlSessionTemplate sqlSession, DosageVO d) {

		System.out.println("투약의뢰 dao in!!");
		System.out.println("dao ::: " + d);

		return sqlSession.insert("Dosage.insertDosageRequest", d);

	}

}
