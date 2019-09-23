package com.kh.fp.dosage.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.dosage.model.exception.DosageException;
import com.kh.fp.dosage.model.vo.Dosage;
import com.kh.fp.dosage.model.vo.DosageBogo;
import com.kh.fp.dosage.model.vo.DosageDetail;
import com.kh.fp.dosage.model.vo.PageInfo;


public interface DosageDao {

	//투약의뢰서 작성
	int insertDosageRequest(SqlSessionTemplate sqlSession, Dosage d, String signUrl) throws DosageException;

	//투약의뢰서 리스트 카운트
	int getListCount(SqlSessionTemplate sqlSession, int userNo);

	//투약의뢰서 리스트 조회(원장)
	ArrayList<DosageDetail> selectDosageRequestList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi) throws DosageException;

	//투약의뢰서 상세 조회
	DosageDetail selectDosageOne(SqlSessionTemplate sqlSession, int dosageNo) throws DosageException;

	//투약의뢰서 리스트 카운트(학부모)
	int getPListCount(SqlSessionTemplate sqlSession, int userNo);

	//투약의뢰서 리스트 조회(학부모)
	ArrayList<DosageDetail> selectPDosageRequestList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi) throws DosageException;

	//투약의뢰서 리스트 카운트(선생님)
	int getTListCount(SqlSessionTemplate sqlSession, int userNo);

	//투약의뢰서 리스트 조회(선생님)
	ArrayList<DosageDetail> selectTDosageRequestList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi) throws DosageException;

	//투약 보고서 작성
	int writeReport(SqlSessionTemplate sqlSession, DosageBogo d) throws DosageException;

	//투약 보고서 작성되면 상태 업데이트 - 뷰 전환
	int updateCheck(SqlSessionTemplate sqlSession, Dosage dosage) throws DosageException;

	//투약의뢰서 상세 조회 - 보고서 있을 때
	DosageDetail selectReportOne(SqlSessionTemplate sqlSession, int dosageNo) throws DosageException;
}
