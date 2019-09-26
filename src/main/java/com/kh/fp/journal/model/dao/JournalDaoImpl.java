package com.kh.fp.journal.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.journal.model.exception.JournalException;
import com.kh.fp.journal.model.vo.Journal;

@Repository
public class JournalDaoImpl implements JournalDao{

	//일지 작성하기
	@Override
	public int writeJournal(SqlSessionTemplate sqlSession, Journal j) throws JournalException {

		int result = sqlSession.insert("Journal.insertJournal", j);

		if(result == 0) {
			throw new JournalException("일지 작성 실패!");
		}

		return result;
	}

	//일지 리스트 카운트
	@Override
	public int getListCount(SqlSessionTemplate sqlSession, int userNo) {

		return sqlSession.selectOne("Journal.selectListCount", userNo);
	}

}
