package com.kh.fp.notice.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.notice.model.dao.NoticeDao;
import com.kh.fp.notice.model.vo.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {
		
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private NoticeDao nd;

	@Override
	public String insertNotice(Notice n) {
		
		System.out.println("여기는 공지사항 서비스");
		
		String insertNotice = nd.insertNotice(sqlSession,n);
		
		return insertNotice;
		
	}

}
