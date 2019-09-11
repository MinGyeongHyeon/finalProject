package com.kh.fp.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.notice.model.dao.NoticeDao;
import com.kh.fp.notice.model.exception.NoticeException;
import com.kh.fp.notice.model.vo.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {
		
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private NoticeDao nd;

	@Override
	public String insertNotice(Notice n) throws NoticeException {
		
		System.out.println("여기는 공지사항 서비스");
		
		String insertNotice = nd.insertNotice(sqlSession,n);
		
		return insertNotice;
		
	}

	@Override
	public ArrayList selectWho(int userNo) {
		System.out.println("여기는 누구일까 서비스");
		
		ArrayList Who = nd.selectWho(sqlSession,userNo);
		
		return Who;
	}

	@Override
	public int getListCount() {
		
		return nd.getListCount(sqlSession);
	}

}
