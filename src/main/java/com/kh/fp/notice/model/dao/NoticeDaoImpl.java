package com.kh.fp.notice.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.notice.model.vo.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao{

	@Override
	public String insertNotice(SqlSessionTemplate sqlSession, Notice n) {
		System.out.println("여기는 공지사항 다오" + n);
		
		int notice = sqlSession.insert("notice.insertNotice",n);
		
		
		return null;
	}

}
