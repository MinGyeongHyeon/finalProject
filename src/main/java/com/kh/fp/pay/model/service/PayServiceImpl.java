package com.kh.fp.pay.model.service;
	
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.pay.model.dao.PayDao;
import com.kh.fp.pay.model.vo.Kindergarden;
import com.kh.fp.pay.model.vo.Pay;
	
@Service
public class PayServiceImpl implements PayService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private PayDao pad;

	@Autowired private DataSourceTransactionManager transactionManager;
	
	@Override
	public ArrayList<Kindergarden> selectGardenInfo(int kinderNo) {
		ArrayList<Kindergarden> kg = pad.selectGardenInfo(sqlSession, kinderNo);
		return kg;
	}

	@Override
	public int paymentSuccess(Member loginUser, Pay pay) {
		int result = 0;
		//pay 테이블 insert
		int result1 = pad.paymentSuccess(sqlSession, pay);
		//pay_on 테이블 insert
		int result2 = pad.insertPayOn(sqlSession, pay);
		if(result1 > 0 && result2 > 0) {
			//pay, on 테이블 insert 성공 시
			Kindergarden k = pad.selectGardenUsing(sqlSession, loginUser);
			
		}
		
		result = 1;
		return result;
	}

	
}
