package com.kh.fp.dosage.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.dosage.model.exception.DosageException;
import com.kh.fp.dosage.model.vo.Dosage;
import com.kh.fp.dosage.model.vo.PageInfo;


public interface DosageDao {

	//투약의뢰서 작성
	int insertDosageRequest(SqlSessionTemplate sqlSession, Dosage d, String signUrl) throws DosageException;

	//투약의뢰서 리스트 카운트
	int getListCount(SqlSessionTemplate sqlSession, int userNo);

	//투약의뢰서 리스트 조회(원장)
	ArrayList<Dosage> selectDosageRequestList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi) throws DosageException;
}
