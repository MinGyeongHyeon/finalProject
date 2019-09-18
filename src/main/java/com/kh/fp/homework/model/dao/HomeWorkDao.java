package com.kh.fp.homework.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.HomeWorkChildren;
import com.kh.fp.homework.model.vo.homework;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.returnHome.model.vo.ChildrenClass;

public interface HomeWorkDao {

	int insertHomeWork(SqlSessionTemplate sqlSession, homework h) throws HomeWorkException;

	int selectHowmany(SqlSessionTemplate sqlSession, int classNum);

	int selectBoardNum(SqlSessionTemplate sqlSession, Attachment at);

	int insertAt(SqlSessionTemplate sqlSession, Attachment at);

	int selectClassNum(SqlSessionTemplate sqlSession, int userNo2);

	ArrayList<HomeWorkChildren> selectChildrenName(SqlSessionTemplate sqlSession, int userNo2);


}
