package com.kh.fp.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.member.model.vo.Member;

public interface MemberDao {

	String selectMemberPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);

	int insertUser(SqlSessionTemplate sqlSession, Member m);

	Member idcheck(SqlSessionTemplate sqlSession, Member m);

	



}
