package com.kh.fp.journal.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.journal.model.exception.JournalException;
import com.kh.fp.journal.model.vo.Journal;
import com.kh.fp.journal.model.vo.PageInfo;

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

	//일지 리스트 카운트(선생님)
	@Override
	public int getTListCount(SqlSessionTemplate sqlSession, Journal j) {

		return sqlSession.selectOne("Journal.selectTListCount", j);
	}

	//일지 리스트(원장)
	@Override
	public ArrayList<Journal> getJournalList(SqlSessionTemplate sqlSession, int userNo,  PageInfo pi) throws JournalException {

		ArrayList<Journal> list = null;

		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		list = (ArrayList)sqlSession.selectList("Journal.selectJournalList", userNo, rowBounds);

		if(list == null) {
			throw new JournalException("일지 리스트 조회 실패!");
		}

		return list;
	}

}
