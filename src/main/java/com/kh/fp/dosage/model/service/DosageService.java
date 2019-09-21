package com.kh.fp.dosage.model.service;

import java.util.ArrayList;

import com.kh.fp.dosage.model.exception.DosageException;
import com.kh.fp.dosage.model.vo.Dosage;
import com.kh.fp.dosage.model.vo.PageInfo;

public interface DosageService {

	//투약의뢰서 작성
	int insertDosageRequest(Dosage d, String signUrl) throws DosageException;

	//투약의뢰서 리스트 카운트(원장)
	int getListCount(int userNo);

	//투약의뢰서 리스트 조회(원장)
	ArrayList<Dosage> selectDosageRequestList(PageInfo pi, int userNo) throws DosageException;

}
