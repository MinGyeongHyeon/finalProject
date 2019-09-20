package com.kh.fp.dosage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.dosage.model.vo.Dosage;

@Repository
public class DosageDaoImpl implements DosageDao{

/*
	@Override
	public int insertDosageRequest(SqlSessionTemplate sqlSession, DosageVO d) {

		System.out.println("투약의뢰 dao in!!");
		System.out.println("dao ::: " + d);

		return sqlSession.insert("Dosage.insertDosageRequest", d);

	}
*/
	@Override
	public int insertDosageRequest(SqlSessionTemplate sqlSession, Dosage d) {
		// TODO Auto-generated method stub
		return 0;
	}

	//투약의뢰서 리스트 카운트
	@Override
	public int getListCount(SqlSessionTemplate sqlSession, int userNo) {

		return sqlSession.selectOne("Dosage.selectListCount", userNo);
	}


}
