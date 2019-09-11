package com.kh.fp.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.fp.member.model.dao.MemberDao;
import com.kh.fp.member.model.exception.JoinException;
import com.kh.fp.member.model.exception.LoginException;
import com.kh.fp.member.model.vo.KidMember;
import com.kh.fp.member.model.vo.KinGardenClass;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{


	 @Autowired
	 private SqlSessionTemplate sqlSession;
	  
	  @Autowired 
	  private MemberDao md;
	  
	 @Autowired 
	 private BCryptPasswordEncoder passwordEncoder; 
	  
	 @Autowired private DataSourceTransactionManager transactionManager;
	  
	  
	  @Override 
	  public Member login(Member m) throws LoginException  { 
		  
		  Member loginUser = null;
	  
	  String encPassword = md.selectMemberPassword(sqlSession, m);
	  
	  
	  
	  if(passwordEncoder.matches(m.getUserPwd(), encPassword)) {
	  
		  loginUser = md.selectMember(sqlSession,m);
	  
	  }else {
	  
	  throw new LoginException("아이디 혹은 비밀번호가 틀립니다. 다시 시도해주세요");
	  
	  }
	  
	  
	  
	  return loginUser; 
	  
	  }

	@Override
	public int insertUser(Member m) throws JoinException {
		
		int result = md.insertUser(sqlSession, m);
	
		
		if(result <= 0) {
			
			throw new JoinException("회원가입 도중 에러가 발생하였습니다. 다시 시도해주세요.");
			
		}else {
	
			
		}

		
		return result;
	}

	@Override
	public Member idcheck(Member m) {
		

		
		return md.idcheck(sqlSession , m);
	}

	@Override
	public Member selectnumber(Member m) {

		
		return md.selectnumber(sqlSession , m);
	}

	@Override
	public int insertkid(KidMember km) throws JoinException {
		
		int result = md.insertKid(sqlSession , km);
		
		if(result <= 0) {
			throw new JoinException("자녀 등록 중 오류가 발생하였습니다. 다시 시도해주세요");
		}

		
		return result;
	}

	@Override
	public int kininsert(KinderGarden kg) {
		
		

		return md.kininsert(sqlSession , kg);
	}

	@Override
	public int kinselect() {
		

		return md.kinselect(sqlSession);
	}


	@Override
	public ArrayList kinclassselect(KinGardenClass kc) {

		
		return md.kinclassselect(sqlSession , kc);
	}

	@Override
	public int classinsert(ArrayList list) {

		return md.classinsert(sqlSession, list);
	}

	@Override
	public int selectkid(int select) {
	
		return md.selectkid(sqlSession , select);
		
	}

	@Override
	public int Kinclassinsert(KinGardenClass kc) {

		return md.kinclassinsert(sqlSession ,kc);
	}

	@Override
	public int childrenCount(Member loginUser) {

		return md.childrenCount(sqlSession , loginUser);
	}

	@Override
	public int teacherCount(Member loginUser) {

		return md.teacherCount(sqlSession,loginUser);
	}

	@Override
	public ArrayList teacherMe(Member m) {

		return md.teacherMe(sqlSession , m);
	}

	@Override
	public int childrenCountN(Member loginUser) {

		return md.childrenCountN(sqlSession,loginUser);
	}

	@Override
	public int teacherCountN(Member loginUser) {

		return md.teacherCountN(sqlSession,loginUser);
	}

	@Override
	public ArrayList childrenMe(Member m) {

		return md.childrenMe(sqlSession, m);
	}

	@Override
	public ArrayList childrenMe2(Member m) {

		return md.childrenMe2(sqlSession , m);
	}

	@Override
	public ArrayList childrenMe3(Member m) {

		return md.childrenMe3(sqlSession, m);
	}

	@Override
	public ArrayList teacherMe2(Member m) {

		return md.teacherMe2(sqlSession ,m);
	}

	@Override
	public Member teacherAt(Member m) {

		return md.teacherAt(sqlSession, m);
	}



	

	
	 
	

}
