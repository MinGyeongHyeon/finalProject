package com.kh.fp.journal.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.journal.model.dao.JournalDao;
import com.kh.fp.journal.model.exception.JournalException;
import com.kh.fp.journal.model.vo.Journal;

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

	//일지 리스트 카운트
	@Override
	public int getListCount(int userNo) {

		return jd.getListCount(sqlSession, userNo);
	}

}
