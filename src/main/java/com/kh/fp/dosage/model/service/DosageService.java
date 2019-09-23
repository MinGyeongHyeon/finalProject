package com.kh.fp.dosage.model.service;

import java.util.ArrayList;

import com.kh.fp.dosage.model.exception.DosageException;
import com.kh.fp.dosage.model.vo.Dosage;
import com.kh.fp.dosage.model.vo.DosageBogo;
import com.kh.fp.dosage.model.vo.DosageDetail;
import com.kh.fp.dosage.model.vo.PageInfo;

public interface DosageService {

	//투약의뢰서 작성
	int insertDosageRequest(Dosage d, String signUrl) throws DosageException;

	//투약의뢰서 리스트 카운트(원장)
	int getListCount(int userNo);
	//투약의뢰서 리스트 조회(원장)
	ArrayList<DosageDetail> selectDosageRequestList(PageInfo pi, int userNo) throws DosageException;

	//투약의뢰서 상세 조회
	DosageDetail selectDosageOne(int dosageNo) throws DosageException;
	DosageDetail selectReportOne(int dosageNo) throws DosageException;

	//투약의뢰서 리스트 카운트(학부모)
	int getPListCount(int userNo);
	//투약의뢰서 리스트 조회(학부모)
	ArrayList<DosageDetail> selectPDosageRequestList(PageInfo pi, int userNo) throws DosageException;

	//투약의뢰서 리스트 카운트(선생님)
	int getTListCount(int userNo);
	//투약의뢰서 리스트 조회(선생님)
	ArrayList<DosageDetail> selectTDosageRequestList(PageInfo pi, int userNo) throws DosageException;

	//투약 보고서 작성
	int writeReport(DosageBogo d) throws DosageException;

	//투약 보고서 작성되면 상태 업데이트 - 뷰 전환
	int updateCheck(Dosage dosage) throws DosageException;



}
