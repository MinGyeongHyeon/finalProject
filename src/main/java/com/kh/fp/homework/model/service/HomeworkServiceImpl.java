package com.kh.fp.homework.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.album.model.vo.Album;
import com.kh.fp.homework.model.dao.HomeWorkDao;
import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.HomeWorkChildren;
import com.kh.fp.homework.model.vo.IndividualHomework;
import com.kh.fp.homework.model.vo.homework;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.returnHome.model.vo.ChildrenClass;

@Service
public class HomeworkServiceImpl implements HomeworkService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private HomeWorkDao hd;
	
	@Override
	public int insertHomeWork(homework h) throws HomeWorkException {
		// TODO Auto-generated method stub
		
		System.out.println("여기는 서비스");
		int insertHomeWork = hd.insertHomeWork(sqlSession,h);
		
		return insertHomeWork;
	
		
		
	}

	@Override
	public int howManyPeople(int classNum) {
		System.out.println("여기는 몇명 서비스");
		
		int howManyPeople = hd.selectHowmany(sqlSession,classNum);
		
		
		return howManyPeople;
	}

	@Override
	public int insertAt(Attachment at) {
		
		System.out.println("서비스"+at);
		
		int BoardNo = hd.selectBoardNum(sqlSession,at);
		
		at.setBoardNo(BoardNo);
		
		int insertAt = hd.insertAt(sqlSession,at);
		
		return insertAt;
	}

	@Override
	public int selectClassNum(int userNo2) {
		
		int classNum = hd.selectClassNum(sqlSession,userNo2);
		
		return classNum;
	}

	@Override
	public ArrayList<HomeWorkChildren> selectChildren(int userNo2) {
		
		ArrayList<HomeWorkChildren> list = null;
		
		list = hd.selectChildrenName(sqlSession,userNo2);
		
		System.out.println(list + "리스트");
		return list;
	}

	@Override
	public String selectClassName(int userNo2) {
		String ClassName = hd.selectClassName(sqlSession,userNo2);
		
		return ClassName;
	}

	@Override
	public int insertIndiHomework(ArrayList<IndividualHomework> homeless) {
		
		
		int insertIndiH = hd.insertIndiH(sqlSession,homeless);
		
		return 0;
	}

	@Override
	public int selectBoardNum() {

		int BoardNo = hd.selectBoardNum(sqlSession);

		return BoardNo;
	}

	@Override
	public int getTListCount(int userNo) {

		int ListCount = hd.TListCount(sqlSession,userNo);
		System.out.println(ListCount+"개");
		
		return ListCount;
	}



	@Override
	public ArrayList<homework> selectThomework(com.kh.fp.homework.model.vo.PageInfo pi, int userNo) {
		ArrayList<homework> list = null;
		
		list = hd.selectTH(sqlSession,userNo,pi);
		
		return list;
		
	}



	@Override
	public ArrayList<homework> SelectOneT(int userNo, int bid) {
		
		ArrayList<homework> list = null;
		
		list = hd.selectOneT(sqlSession,userNo,bid);
		
		return list;

	}

	@Override
	public ArrayList<homework> SelectOneC(int userNo, int bid) {

		ArrayList<homework> list = null;
		
		list = hd.selectOneC(sqlSession,userNo,bid);
		
		return null;
	}

	@Override
	public int UpdateNoticeStatus(int bid, String status) {

		
		int update = hd.updateH(sqlSession,status,bid);
		
		return update;
	}


	 

}
