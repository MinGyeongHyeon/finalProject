package com.kh.fp.notice.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Controller;

import com.kh.fp.notice.model.exception.NoticeException;
import com.kh.fp.notice.model.vo.Notice;

@Controller
public interface NoticeDao {

	String insertNotice(SqlSessionTemplate sqlSession, Notice n) throws NoticeException;

	ArrayList selectWho(SqlSessionTemplate sqlSession, int userNo);

	int getListCount(SqlSessionTemplate sqlSession);

}
