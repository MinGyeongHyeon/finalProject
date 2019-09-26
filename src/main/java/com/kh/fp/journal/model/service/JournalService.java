package com.kh.fp.journal.model.service;

import com.kh.fp.journal.model.exception.JournalException;
import com.kh.fp.journal.model.vo.Journal;

public interface JournalService {

	//일지 작성하기
	int writeJournal(Journal j) throws JournalException;

	//일지 리스트카운트
	int getListCount(int userNo);

}
