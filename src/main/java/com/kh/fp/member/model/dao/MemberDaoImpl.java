package com.kh.fp.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Override
	public String selectMemberPassword(SqlSessionTemplate sqlSession, Member m) {
		
		

		
		return sqlSession.selectOne("Member.selectPassword", m);
	}


	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, Member m) {

		
		return sqlSession.selectOne("Member.selectLoginUser",m);
	}


	@Override
	public int insertUser(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.insert("Member.insertMember",m);
	}


	@Override
	public Member idcheck(SqlSessionTemplate sqlSession, Member m) {
		
		System.out.println("다오의 실행");
	
		

		return sqlSession.selectOne("Member.idcheck",m);
		
	}


	

	


	
}
