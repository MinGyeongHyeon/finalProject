package com.kh.fp.homework.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.HomeWorkChildren;
import com.kh.fp.homework.model.vo.homework;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.notice.model.vo.Notice;
import com.kh.fp.returnHome.model.vo.ChildrenClass;

@Repository
public class HomeWorkDaoImpl implements HomeWorkDao {
	
	//homeWork insert용
	@Override
	public int insertHomeWork(SqlSessionTemplate sqlSession, homework h) throws HomeWorkException{
		 
		System.out.println("여기는 다오" + h);
		int user = sqlSession.insert("homework.insertHomeWork",h);
		
		if(user <= 0) {
			throw new HomeWorkException("homework insert 실패!");
		}
		return user;
	
	}

	@Override
	public int selectHowmany(SqlSessionTemplate sqlSession, int classNum) {
		System.out.println("여기는 몇명 다오");
		
		int howmanyP = sqlSession.selectOne("homework.selectPeople", classNum);
		
		return howmanyP;
	}

	
	@Override
	public int selectBoardNum(SqlSessionTemplate sqlSession, Attachment at) {
		
		int Num = sqlSession.selectOne("homework.selectNum");
		
		System.out.println(Num + "입니다");
		return Num;
	}

	@Override
	public int insertAt(SqlSessionTemplate sqlSession, Attachment at) {

		int insertAt = sqlSession.insert("homework.insertAt",at);
		
		return insertAt;
	}

	@Override
	public int selectClassNum(SqlSessionTemplate sqlSession, int userNo2) {
		
		System.out.println(userNo2+ "유저");
		
		int classNum = sqlSession.selectOne("homework.selectClassNum",userNo2);
		
		
		return classNum;
	}

	@Override
	@SuppressWarnings("unchecked")
	public ArrayList<HomeWorkChildren> selectChildrenName(SqlSessionTemplate sqlSession, int userNo2) {
		
		
		ArrayList<HomeWorkChildren> list = null;
		System.out.println("어디야");
		list = (ArrayList)sqlSession.selectList("homework.selectChildrenNatt",userNo2);
		
		System.out.println(list + "zizi");
		
		return list;
	}



}
