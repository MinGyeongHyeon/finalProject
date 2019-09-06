package com.kh.fp.homework.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.homework;

public interface HomeWorkDao {

	int insertHomeWork(SqlSessionTemplate sqlSession, homework h) throws HomeWorkException;

	int selectHowmany(SqlSessionTemplate sqlSession, int classNum);

}
