package com.kh.fp.pay.model.service;
	
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

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
	public int paymentSuccess(Pay pay) {
		
		int result = 0;
		//pay 테이블 insert
		int result1 = pad.paymentSuccess(sqlSession, pay);
		//pay_on 테이블 insert
		int result2 = pad.insertPayOn(sqlSession, pay);
		if(result1 > 0 && result2 > 0) {
			//pay, on 테이블 insert 성공 시
			ArrayList<Kindergarden> k = pad.selectGardenUsing(sqlSession, pay);
			int  result3 = 0;
			System.out.println("kkkk::" + k);
			
			if(k.isEmpty()) {
				result3 = pad.insertGardenUsing(sqlSession, pay);
			}else {
				System.out.println("k:::::::::: " + k);
				SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
				Date d = new Date();
				
				String usingDate = k.get(0).getUsingDate();
				
				try {
					Date oldDate = format.parse(usingDate);
				
					int num = d.compareTo(oldDate);
					if(num > 0) {
						result3 = pad.updateNewGardenUsing(sqlSession, pay);
					}else {
						result3 = pad.updatePlusGardenUsing(sqlSession, pay);
					}
					
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
					
					
				
				
			}
			
			
			
		}
		
		result = 1;
		return result;
	}

	
}
