package com.kh.fp.homework.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.homework.model.dao.HomeWorkDao;
import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.homework;

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
		
		return 0;
	
		
		
	}
	
	 

}
