package com.kh.fp.notice.model.service;

import java.util.ArrayList;

import org.apache.tools.ant.Project;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.notice.model.dao.NoticeDao;
import com.kh.fp.notice.model.exception.NoticeException;
import com.kh.fp.notice.model.vo.Notice;
import com.kh.fp.notice.model.vo.NoticeWho;

@Service
public class NoticeServiceImpl implements NoticeService {
		
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private NoticeDao nd;

	@Override
	public String insertNotice(Notice n) throws NoticeException {
		
		System.out.println("여기는 공지사항 서비스");
		
		String insertNotice = nd.insertNotice(sqlSession,n);
		
		return insertNotice;
		
	}

	@Override
	public ArrayList selectWho(int userNo) {
		
		ArrayList Who = nd.selectWho(sqlSession,userNo);
		System.out.println(Who);
		return Who;
	}
	

	@Override
	public int selectChildrenNum(int userNo) {
		
		int num = nd.selectChildrenNum(sqlSession,userNo);
		
		return num;
	}
	
	@Override
	public ArrayList selectWhochildren(int selectNum) {

		ArrayList Who = nd.selectWhoChildren(sqlSession,selectNum);
		
		return Who;
	}

	@Override
	public ArrayList selectWhoMaster(int userNo) {

		ArrayList Who = nd.selectWhoMaster(sqlSession,userNo);
		
		return Who;
	}



	@Override
	public int getListCount(NoticeWho noticeWho) {
		
		return nd.getListCount(sqlSession,noticeWho);
	}

	

	@Override
	public ArrayList<Notice> selectProjectList(PageInfo pi, NoticeWho noticeWho) {
		
		ArrayList<Notice>list = nd.selectBoardList(sqlSession,pi,noticeWho);

		
		return list;
	}
	
	@Override
	public ArrayList<Notice> selectProjectChildrenList(PageInfo pi, NoticeWho noticeWho) {
		
		ArrayList<Notice>list = nd.selectBoardChildrenList(sqlSession,pi,noticeWho);
		
		return list;
	}


	@Override
	public Notice selectNotice(int bid) throws NoticeException {
		
		//int result = nd.updateCount(sqlSession,bid);
		
		Notice n;
		
		n = nd.selectOneNotice(sqlSession,bid);
		
		
		return n;
	}

	@Override
	public int UpdateNoticeStatus(int bid, String status) {

		int result = nd.updateNoticeStatus(bid,status,sqlSession);
		
		
		return result;
	}

	@Override
	public ArrayList selectTeacher(int userNo) {
		
		ArrayList result = nd.SelectTeacher(userNo,sqlSession);
		
		
		return result;
	}





}























