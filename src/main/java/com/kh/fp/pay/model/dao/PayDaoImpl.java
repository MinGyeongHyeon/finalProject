package com.kh.fp.pay.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.pay.model.vo.Kindergarden;

@Repository
public class PayDaoImpl implements PayDao{

	@Override
	public ArrayList<Kindergarden> selectGardenInfo(SqlSessionTemplate sqlSession, int kinderNo) {
		@SuppressWarnings("unchecked")
		ArrayList<Kindergarden> kg = (ArrayList) sqlSession.selectList("Pay.selectGardenInfo", kinderNo);
		
		
		return kg;
	}

}
