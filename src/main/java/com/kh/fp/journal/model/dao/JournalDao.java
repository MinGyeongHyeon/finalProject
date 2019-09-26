package com.kh.fp.journal.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.journal.model.exception.JournalException;
import com.kh.fp.journal.model.vo.Journal;

public interface JournalDao {

	//일지 작성하기
	int writeJournal(SqlSessionTemplate sqlSession, Journal j) throws JournalException;

	//일지 리스트 카운트
	int getListCount(SqlSessionTemplate sqlSession, int userNo);

}
