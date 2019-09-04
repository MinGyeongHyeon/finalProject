package com.kh.fp.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.member.model.exception.JoinException;
import com.kh.fp.member.model.vo.KidMember;
import com.kh.fp.member.model.vo.KinGardenClass;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;

public interface MemberDao {

	String selectMemberPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);

	int insertUser(SqlSessionTemplate sqlSession, Member m) throws JoinException;


	Member idcheck(SqlSessionTemplate sqlSession, Member m);

	Member selectnumber(SqlSessionTemplate sqlSession, Member m);

	int insertKid(SqlSessionTemplate sqlSession, KidMember km);

	int kininsert(SqlSessionTemplate sqlSession, KinderGarden kg);

	int kinselect(SqlSessionTemplate sqlSession);


	int kinclassinsert(SqlSessionTemplate sqlSession, KinGardenClass kc);

	ArrayList kinclassselect(SqlSessionTemplate sqlSession, KinGardenClass kc);

	int classinsert(SqlSessionTemplate sqlSession, ArrayList list);

	



}
