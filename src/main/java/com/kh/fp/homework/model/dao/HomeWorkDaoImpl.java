package com.kh.fp.homework.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.HomeWorkChildren;
import com.kh.fp.homework.model.vo.IndividualHomework;
import com.kh.fp.homework.model.vo.PageInfo;
import com.kh.fp.homework.model.vo.Whoselect;
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
		
		System.out.println("at"+at);
		
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

	@Override
	public String selectClassName(SqlSessionTemplate sqlSession, int userNo2) {

		String className = sqlSession.selectOne("homework.selectChildrenName",userNo2);
		System.out.println(className);
		return className;
	}

	@Override
	public int insertIndiH(SqlSessionTemplate sqlSession, ArrayList<IndividualHomework> homeless) {
		
		
		
		for(int i = 0; i < homeless.size(); i++) {
			IndividualHomework list = (IndividualHomework)homeless.get(i);
			int insertH = sqlSession.insert("homework.insertIndiH",list);
		}
		
		
		return 0;
	}

	@Override
	public int selectBoardNum(SqlSessionTemplate sqlSession) {

		int Num = sqlSession.selectOne("homework.selectNum");
		System.out.println(Num+"다오");
		return Num;
	}

	@Override
	public int TListCount(SqlSessionTemplate sqlSession,int userNo) {

		int BNum = sqlSession.selectOne("homework.selectTBlistC",userNo);
		
		return BNum;
	}



	@Override
	public ArrayList<homework> selectTH(SqlSessionTemplate sqlSession, int userNo, PageInfo pi) {
		ArrayList<homework> list = null;
		
		int offset = (pi.getCurrentPage() -1 ) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
	
		list = (ArrayList)sqlSession.selectList("homework.selectTList",userNo,rowBounds);
		
		System.out.println("list:::::"+list);
		
		return list;
	
	}

	

	@Override
	public ArrayList<homework> selectOneT(SqlSessionTemplate sqlSession, int userNo, int bid) {
		
		ArrayList<homework> list = null;
		
		
		Whoselect who = new Whoselect();
		who.setBoardNum(bid);
		who.setUserNo(userNo);
		
		System.out.println("반은"+who.getBoardNum());
		System.out.println("유저번호는"+who.getUserNo());
		
		list = (ArrayList)sqlSession.selectList("homework.seletOneT",who);
		
		System.out.println("list---->"+list);
		
		return list;
			
	}

}


























