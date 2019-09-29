package com.kh.fp.bus.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.bus.model.vo.bus;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.notice.model.vo.NoticeWho;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Override
	public int insertBusOn(SqlSessionTemplate sqlSession, ArrayList<bus> list) {
		
		int BusOn = 0;
		
		for(int i = 0; i <list.size(); i++) {
			BusOn = sqlSession.insert("Bus.insertBus",list.get(i));
		}
		return BusOn;
	}

	@Override
	public int selectCount(SqlSessionTemplate sqlSession) {

		int count = sqlSession.selectOne("Bus.selectCount");
		
		return count;
	}

	@Override
	public ArrayList<bus> selectListN(SqlSessionTemplate sqlSession, String dayday,int cnum) {
		
		
		NoticeWho w = new NoticeWho();
		System.out.println("날짜는"+dayday);
		w.setClassName(dayday);
		w.setClassNum(cnum);
		System.out.println(w);
		ArrayList<bus> list = (ArrayList) sqlSession.selectList("Bus.selectListN",w);
		System.out.println(list);
	
		return list;
	}

	@Override
	public ArrayList<bus> selectTList(SqlSessionTemplate sqlSession, String abc, int cnum) {

		NoticeWho w = new NoticeWho();
		System.out.println("날짜는"+abc);
		w.setClassName(abc);
		w.setClassNum(cnum);
		System.out.println(w);
		
		ArrayList<bus> list = (ArrayList) sqlSession.selectList("Bus.selectListN",w);
		
		return list;
	}

	@Override
	public ArrayList<bus> selectCListN(SqlSessionTemplate sqlSession, String day, int cnum) {
		ArrayList<bus> list = null;
		NoticeWho w = new NoticeWho();
		w.setClassName(day);
		w.setClassNum(cnum);
		System.out.println("dao impl list w객체 : "+w);
		list = (ArrayList) sqlSession.selectList("Bus.selectCListN",w);
		System.out.println("daoimpl list : "+list);
		
		return list;
	}

	@Override
	public ArrayList<bus> selectCList(SqlSessionTemplate sqlSession, String abc, int cnum) {
		NoticeWho w = new NoticeWho();
		System.out.println("날짜는"+abc);
		w.setClassName(abc);
		w.setClassNum(cnum);
		System.out.println(w);
		ArrayList<bus> list = (ArrayList) sqlSession.selectList("Bus.selectCListN",w);
		System.out.println(list);
		
		
		return list;
	}

}
