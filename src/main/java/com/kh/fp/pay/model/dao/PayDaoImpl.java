package com.kh.fp.pay.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.pay.model.vo.Kindergarden;
import com.kh.fp.pay.model.vo.Pay;

@Repository
public class PayDaoImpl implements PayDao{

	@Override
	public ArrayList<Kindergarden> selectGardenInfo(SqlSessionTemplate sqlSession, int kinderNo) {
		@SuppressWarnings("unchecked")
		ArrayList<Kindergarden> kg = (ArrayList) sqlSession.selectList("Pay.selectGardenInfo", kinderNo);	
		return kg;
	}

	@Override
	public int paymentSuccess(SqlSessionTemplate sqlSession, Pay pay) {
		int result = sqlSession.insert("Pay.paymentSuccess", pay);
		return result;
	}

	@Override
	public int insertPayOn(SqlSessionTemplate sqlSession, Pay pay) {
		int result = sqlSession.insert("Pay.insertPayOn", pay);
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Kindergarden> selectGardenUsing(SqlSessionTemplate sqlSession, Pay pay) {
		ArrayList<Kindergarden> k = (ArrayList) sqlSession.selectList("Pay.selectGardenUsing", pay);
		return k;
	}

	@Override
	public int insertGardenUsing(SqlSessionTemplate sqlSession, Pay pay) {
		int result = sqlSession.insert("Pay.insertGardenUsing", pay);
		
		return result;
	}

	@Override
	public int updateNewGardenUsing(SqlSessionTemplate sqlSession, Pay pay) {
		int result = sqlSession.update("Pay.updateNewGardenUsing", pay);
		return result;
	}

	@Override
	public int updatePlusGardenUsing(SqlSessionTemplate sqlSession, Pay pay) {
		int result = sqlSession.update("Pay.updatePlusGardenUsing", pay);
		return result;
	}

}
