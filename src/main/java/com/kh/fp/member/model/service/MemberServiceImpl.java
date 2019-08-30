package com.kh.fp.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.fp.member.model.dao.MemberDao;
import com.kh.fp.member.model.exception.LoginException;
import com.kh.fp.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{


	 @Autowired
	 private SqlSessionTemplate sqlSession;
	  
	  @Autowired 
	  private MemberDao md;
	  
	 @Autowired 
	 private BCryptPasswordEncoder passwordEncoder; 
	  
	/* @Autowired private DataSourceTransactionManager transactionManager; */
	  
	  
	  @Override 
	  public Member login(Member m) throws LoginException  { 
		  
		  Member loginUser = null;
	  
	  String encPassword = md.selectMemberPassword(sqlSession, m);
	  
	  
	  if(passwordEncoder.matches(m.getUserPwd(), encPassword)) {
	  
	  loginUser = md.selectMember(sqlSession,m);
	  
	  }else {
	  
	  throw new LoginException("로그인 실패!");
	  
	  }
	  
	  
	  
	  return loginUser; 
	  
	  }

	@Override
	public int insertUser(Member m) {

		
		return md.insertUser(sqlSession, m);
	}
	 
	

}
