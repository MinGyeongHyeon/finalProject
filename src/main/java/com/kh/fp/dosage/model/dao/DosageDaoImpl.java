package com.kh.fp.dosage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.dosage.model.exception.DosageException;
import com.kh.fp.dosage.model.vo.Dosage;
import com.kh.fp.dosage.model.vo.PageInfo;
import com.kh.fp.returnHome.model.exception.ReturnHomeInsertException;

@Repository
public class DosageDaoImpl implements DosageDao{

	//투약의뢰서 작성
	@Override
	public int insertDosageRequest(SqlSessionTemplate sqlSession, Dosage d, String signUrl) throws DosageException {

		int r1 = 0;
		int r2 = 0;
		int result = 0;

		r1 = sqlSession.insert("Dosage.insertDosageRequest", d);
		if(r1 > 0) {
			r2 = sqlSession.insert("Dosage.insertSign", signUrl);
		}
		if(r1 > 0 && r2 > 0) {
			result = 1;
		}
		if(r1 == 0 || r2 == 0) {
			throw new DosageException("투약의뢰서 등록 실패");
		}

		return result;
	}

	//투약의뢰서 리스트 카운트
	@Override
	public int getListCount(SqlSessionTemplate sqlSession, int userNo) {

		return sqlSession.selectOne("Dosage.selectListCount", userNo);
	}

	//투약의뢰서 리스트 조회(원장)
	@Override
	public ArrayList<Dosage> selectDosageRequestList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi) throws DosageException {

		ArrayList<Dosage> dList = null;

		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		dList = (ArrayList)sqlSession.selectList("Dosage.selectDosageRequestList", userNo, rowBounds);

		if(dList == null) {
			throw new DosageException("투약의뢰서 리스트 조회 실패!");
		}

		return dList;

	}

}
