package com.kh.fp.pay.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.member.model.vo.Member;
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

	@Override
	public Kindergarden selectGardenUsing(SqlSessionTemplate sqlSession, Member loginUser) {
		Kindergarden k = sqlSession.selectOne("Pay.selectGardenUsing", loginUser);
		return k;
	}

}
