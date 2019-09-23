package com.kh.fp.pay.model.service;
	
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
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
			
			int pluseDate = 0;
			if(pay.getSeasonId() == 1) {
				pluseDate = 30;
			}else if(pay.getSeasonId() == 2) {
				pluseDate = 180;
			}
			
			Date d = new Date(); //오늘날짜
			
			if(k.isEmpty()) {
				result3 = pad.insertGardenUsing(sqlSession, pay);
			}else {
				SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
				
				String usingDate = k.get(0).getUsingDate();// 사용가능날짜
				
				try {
					Calendar cal = Calendar.getInstance();
			        Date originDate = new Date();
			        Date laterDate = new Date();

			        originDate = format.parse(usingDate); //사용가능날짜

			        int num = d.compareTo(originDate);
			
			        if(num > 0) {
			            cal.setTime(laterDate);		//달력을 오늘날짜로 초기화
					}else {
			            cal.setTime(originDate);		//달력을 사용가능날짜로 초기화
					}
			        
			        cal.add(Calendar.DATE, pluseDate);        //plusDate 이후 날짜 구하기
			        laterDate = cal.getTime();		//plusDate 날짜를 Date형으로 선언
			        java.sql.Date sqlDate = new java.sql.Date(laterDate.getTime());
			        
			        pay.setPayDate(sqlDate);
					
					result3 = pad.updateGardenUsing(sqlSession, pay);
					
					if(result3 > 0) {
						result = 1;
					}
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return result;
	}

	
}
