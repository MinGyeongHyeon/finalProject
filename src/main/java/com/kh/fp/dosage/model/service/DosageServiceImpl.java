package com.kh.fp.dosage.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.dosage.model.dao.DosageDao;
import com.kh.fp.dosage.model.exception.DosageException;
import com.kh.fp.dosage.model.vo.Dosage;
import com.kh.fp.dosage.model.vo.DosageBogo;
import com.kh.fp.dosage.model.vo.DosageDetail;
import com.kh.fp.dosage.model.vo.PageInfo;

@Service
public class DosageServiceImpl implements DosageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DosageDao dd;

	//투약의뢰서 작성
	@Override
	public int insertDosageRequest(Dosage d, String signUrl) throws DosageException {

		return dd.insertDosageRequest(sqlSession, d, signUrl);
	}

	//투약의뢰서 리스트 카운트
	@Override
	public int getListCount(int userNo) {

		return dd.getListCount(sqlSession, userNo);
	}

	//투약의뢰서 리스트 조회(원장)
	@Override
	public ArrayList<DosageDetail> selectDosageRequestList(PageInfo pi, int userNo) throws DosageException {

		return dd.selectDosageRequestList(sqlSession, userNo, pi);
	}

	//투약의뢰서 상세 조회
	@Override
	public DosageDetail selectDosageOne(int dosageNo) throws DosageException {

		return dd.selectDosageOne(sqlSession, dosageNo);
	}

	//투약의뢰서 리스트 카운트(학부모)
	@Override
	public int getPListCount(int userNo) {

		return dd.getPListCount(sqlSession, userNo);
	}

	//투약의뢰서 리스트 조회(학부모)
	@Override
	public ArrayList<DosageDetail> selectPDosageRequestList(PageInfo pi, int userNo) throws DosageException {

		return dd.selectPDosageRequestList(sqlSession, userNo, pi);
	}

	//투약의뢰서 리스트 카운트(선생님)
	@Override
	public int getTListCount(int userNo) {

		return dd.getTListCount(sqlSession, userNo);
	}

	//투약의뢰서 리스트 조회(선생님)
	@Override
	public ArrayList<DosageDetail> selectTDosageRequestList(PageInfo pi, int userNo) throws DosageException {

		return dd.selectTDosageRequestList(sqlSession, userNo, pi);
	}

	//투약 보고서 작성
	@Override
	public int writeReport(DosageBogo d) throws DosageException {

		return dd.writeReport(sqlSession, d);
	}




}
