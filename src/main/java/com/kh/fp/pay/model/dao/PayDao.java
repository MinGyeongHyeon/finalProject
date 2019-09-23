package com.kh.fp.pay.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.pay.model.vo.Kindergarden;
import com.kh.fp.pay.model.vo.Pay;

public interface PayDao {

	ArrayList<Kindergarden> selectGardenInfo(SqlSessionTemplate sqlSession, int kinderNo);

	int paymentSuccess(SqlSessionTemplate sqlSession, Pay pay);

	int insertPayOn(SqlSessionTemplate sqlSession, Pay pay);

	ArrayList<Kindergarden> selectGardenUsing(SqlSessionTemplate sqlSession, Pay pay);

	int insertGardenUsing(SqlSessionTemplate sqlSession, Pay pay);;

	int updateGardenUsing(SqlSessionTemplate sqlSession, Pay pay);

}
