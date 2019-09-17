package com.kh.fp.homework.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.homework.model.dao.HomeWorkDao;
import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.homework;
import com.kh.fp.member.model.vo.Attachment;

@Service
public class HomeworkServiceImpl implements HomeworkService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private HomeWorkDao hd;
	
	@Override
	public int insertHomeWork(homework h) throws HomeWorkException {
		// TODO Auto-generated method stub
		
		System.out.println("여기는 서비스");
		int insertHomeWork = hd.insertHomeWork(sqlSession,h);
		
		return insertHomeWork;
	
		
		
	}

	@Override
	public int howManyPeople(int classNum) {
		System.out.println("여기는 몇명 서비스");
		
		int howManyPeople = hd.selectHowmany(sqlSession,classNum);
		
		
		return howManyPeople;
	}

	@Override
	public int insertAt(Attachment at) {
		System.out.println("서비스"+at);
		
		int BoardNo = hd.selectBoardNum(sqlSession,at);
		
		at.setBoardNo(BoardNo);
		
		
		
		int insertAt = hd.insertAt(sqlSession,at);
		
		return insertAt;
	}

	@Override
	public int selectClassNum(int userNo) {
		
		int classNum = hd.selectClassNum(sqlSession,userNo);
		
		return classNum;
	}


	
	 

}
