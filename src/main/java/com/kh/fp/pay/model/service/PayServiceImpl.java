package com.kh.fp.pay.model.service;
	
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
	
import com.kh.fp.pay.model.dao.PayDao;
import com.kh.fp.pay.model.vo.Kindergarden;
	
@Service
public class PayServiceImpl implements PayService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private PayDao pad;

	@Override
	public ArrayList<Kindergarden> selectGardenInfo(int kinderNo) {
		ArrayList<Kindergarden> kg = pad.selectGardenInfo(sqlSession, kinderNo);
		
		return kg;
	}
	
	
}
