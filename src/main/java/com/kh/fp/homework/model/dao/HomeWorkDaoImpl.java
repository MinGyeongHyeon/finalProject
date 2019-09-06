package com.kh.fp.homework.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.homework;

@Repository
public class HomeWorkDaoImpl implements HomeWorkDao {
	
	//homeWork insert용
	@Override
	public int insertHomeWork(SqlSessionTemplate sqlSession, homework h) throws HomeWorkException{
		 
		System.out.println("여기는 다오" + h);
		int user = sqlSession.insert("homework.insertHomeWork",h);
		
		if(user <= 0) {
			throw new HomeWorkException("homework insert 실패!");
		}
		return user;
	
	}

	@Override
	public int selectHowmany(SqlSessionTemplate sqlSession, int classNum) {
		System.out.println("여기는 몇명 다오");
		
		int howmanyP = sqlSession.selectOne("homework.selectPeople", classNum);
		
		return howmanyP;
	}


}
