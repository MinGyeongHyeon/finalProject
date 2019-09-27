package com.kh.fp.journal.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.journal.model.dao.JournalDao;
import com.kh.fp.journal.model.exception.JournalException;
import com.kh.fp.journal.model.vo.Journal;
import com.kh.fp.journal.model.vo.PageInfo;

@Service
public class JournalServiceImpl implements JournalService{

	@Autowired
	private JournalDao jd;
	@Autowired
	private SqlSessionTemplate sqlSession;

	//일지 작성하기
	@Override
	public int writeJournal(Journal j) throws JournalException {

		return jd.writeJournal(sqlSession, j);
	}

	//일지 리스트 카운트(원장)
	@Override
	public int getListCount(int userNo) {

		return jd.getListCount(sqlSession, userNo);
	}
	//일지 리스트 카운트(선생님)
	@Override
	public int getTListCount(Journal j) {

		return jd.getTListCount(sqlSession, j);
	}

	//일지 리스트(원장)
	@Override
	public ArrayList<Journal> selectJournalList(PageInfo pi, int userNo) throws JournalException {

		return jd.getJournalList(sqlSession, userNo, pi);
	}
	//일지 리스트(선생님)
	@Override
	public ArrayList<Journal> selectTJournalList(PageInfo pi, Journal j) throws JournalException {

		return jd.getTJournalList(sqlSession, j, pi);
	}

	//일지 상세조회
	@Override
	public Journal selectJournalOne(int journalNo) throws JournalException {

		return jd.selectJournalOne(sqlSession, journalNo);
	}

}
