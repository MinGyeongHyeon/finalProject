package com.kh.fp.notice.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Controller;

import com.kh.fp.notice.model.vo.Notice;

@Controller
public interface NoticeDao {

	String insertNotice(SqlSessionTemplate sqlSession, Notice n);

}
