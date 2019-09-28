package com.kh.fp.bus.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.bus.model.vo.bus;
import com.kh.fp.member.model.vo.Attachment;

public interface BoardDao {

	int insertBusOn(SqlSessionTemplate sqlSession, ArrayList<bus> list);

	int selectCount(SqlSessionTemplate sqlSession);

	ArrayList<bus> selectListN(SqlSessionTemplate sqlSession, String dayday, int cnum);

	ArrayList<bus> selectTList(SqlSessionTemplate sqlSession, String abc, int cnum);

	ArrayList<bus> selectCListN(SqlSessionTemplate sqlSession, String day, int cnum);

	ArrayList<bus> selectCList(SqlSessionTemplate sqlSession, String abc, int cnum);

}
