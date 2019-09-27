package com.kh.fp.journal.model.service;

import java.util.ArrayList;

import com.kh.fp.journal.model.exception.JournalException;
import com.kh.fp.journal.model.vo.Journal;
import com.kh.fp.journal.model.vo.PageInfo;

public interface JournalService {

	//일지 작성하기
	int writeJournal(Journal j) throws JournalException;

	//일지 리스트카운트(원장)
	int getListCount(int userNo);
	//일지 리스트카운트(선생님)
	int getTListCount(Journal j);

	//일지 리스트 불러오기(원장)
	ArrayList<Journal> selectJournalList(PageInfo pi, int userNo) throws JournalException;
	//일지 리스트 불러오기(선생님)
	ArrayList<Journal> selectTJournalList(PageInfo pi, Journal j) throws JournalException;

	//일지 상세조회
	Journal selectJournalOne(int journalNo) throws JournalException;

}
