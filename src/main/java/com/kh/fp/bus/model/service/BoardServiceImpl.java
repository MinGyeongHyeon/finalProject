package com.kh.fp.bus.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.bus.dao.BoardDao;
import com.kh.fp.bus.model.vo.bus;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.notice.model.dao.NoticeDao;


@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private BoardDao bd;
	
	
	@Override
	public int insertBus(ArrayList<bus> list) {

		int insertBusOn = bd.insertBusOn(sqlSession,list);
		
		return insertBusOn;
	}


	@Override
	public int selectCount() {

		int selectCount = bd.selectCount(sqlSession);
		
		return selectCount;
	}


	@Override
	public ArrayList<bus> selectNoneList(String dayday,int cnum) {

		ArrayList<bus> List = bd.selectListN(sqlSession,dayday,cnum);
		
		return List;
	}


	@Override
	public ArrayList<bus> selectList(String abc, int cnum) {

		ArrayList<bus> List = bd.selectTList(sqlSession,abc,cnum);
		
		return List;
	}


	@Override
	public ArrayList<bus> selectNoneCList(String day, int cnum) {

		ArrayList<bus> List = bd.selectCListN(sqlSession,day,cnum);
		
		return List;
	}


	@Override
	public ArrayList<bus> selectCList(String abc, int cnum) {

		ArrayList<bus> List = bd.selectCList(sqlSession,abc,cnum);
		
		return List;
	}

		
	}




