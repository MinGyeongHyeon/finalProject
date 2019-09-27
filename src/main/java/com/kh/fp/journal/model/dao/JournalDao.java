package com.kh.fp.journal.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.journal.model.exception.JournalException;
import com.kh.fp.journal.model.vo.Journal;
import com.kh.fp.journal.model.vo.PageInfo;

public interface JournalDao {

	//일지 작성하기
	int writeJournal(SqlSessionTemplate sqlSession, Journal j) throws JournalException;

	//일지 리스트 카운트(원장)
	int getListCount(SqlSessionTemplate sqlSession, int userNo);
	//일지 리스트 카운트(선생님)
	int getTListCount(SqlSessionTemplate sqlSession, Journal j);

	//일지 리스트(원장)
	ArrayList<Journal> getJournalList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi) throws JournalException;

}
