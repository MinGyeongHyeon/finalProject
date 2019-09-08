package com.kh.fp.notice.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.notice.model.vo.Notice;

public interface NoticeDao {

	String insertNotice(SqlSessionTemplate sqlSession, Notice n);

}
