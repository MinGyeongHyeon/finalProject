package com.kh.fp.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.notice.model.exception.NoticeException;
import com.kh.fp.notice.model.vo.Notice;
import com.kh.fp.notice.model.vo.NoticeWho;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	
	//notice insert용
	@Override
	public String insertNotice(SqlSessionTemplate sqlSession, Notice n) throws NoticeException {
	
		String insert = "";
		int notice = 0;
		
		if(n.getClassNum() == 0) {

		 notice = sqlSession.insert("Notice.insertNotice",n);
			
		}else {
			
		notice = sqlSession.insert("Notice.insertNotice2",n);	
			
		}

		if(notice <= 0) {
			
			insert = "실패";
			throw new NoticeException("Notice insert 실패");
		}else {
			
			insert = "성공";
		}
		
		return insert;
	} 

	@Override
	public ArrayList selectWho(SqlSessionTemplate sqlSession, int userNo) {
		
		ArrayList Who = (ArrayList) sqlSession.selectList("Notice.selectWho",userNo);
		
		return  Who;
	}
	
	@Override
	public int selectChildrenNum(SqlSessionTemplate sqlSession, int userNo) {

		int ChildrenNum = sqlSession.selectOne("Notice.selectChildrenNum",userNo);
		
		return ChildrenNum;
	}

	@Override
	public ArrayList selectWhoChildren(SqlSessionTemplate sqlSession, int selectNum) {
		
		ArrayList Who = (ArrayList) sqlSession.selectList("Notice.selectWhoChildren",selectNum);
		
		return Who;
	}
	
	@Override
	public ArrayList selectWhoMaster(SqlSessionTemplate sqlSession, int userNo) {
		
		ArrayList Who = (ArrayList) sqlSession.selectList("Notice.selectWhoMaster",userNo);
		
		return Who;
	}


	@Override
	@SuppressWarnings({"unchecked","rawtypes"})
	public int getListCount(SqlSessionTemplate sqlSession, NoticeWho noticeWho) {
		
		return sqlSession.selectOne("Notice.selectListCount",noticeWho);
	}

	@Override
	public ArrayList<Notice> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi, NoticeWho noticeWho) {
		ArrayList<Notice> list = null;
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		System.out.println(noticeWho);
		list = (ArrayList) sqlSession.selectList("Notice.selectList",noticeWho,rowBounds);
		
		
		return list;
	
	}
	
	@Override
	public ArrayList<Notice> selectBoardChildrenList(SqlSessionTemplate sqlSession, PageInfo pi, NoticeWho noticeWho) {
		
		ArrayList<Notice> list = null;
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		Notice n = null;
		
		
		System.out.println(noticeWho);
		list = (ArrayList) sqlSession.selectList("Notice.selectChildrenList",noticeWho,rowBounds);
		
		System.out.println("다오"+list);
		
		
		return list;
	}


	@Override
	public int updateCount(SqlSessionTemplate sqlSession, int bid) {

		
		int result = sqlSession.update("Notice.updateNoticeCount",bid);
		
		
		return 0;
	}

	@Override
	public Notice selectOneNotice(SqlSessionTemplate sqlSession, int bid) throws NoticeException {
		
		Notice n ;
		
		Notice selectOneNotice = sqlSession.selectOne("Notice.selectNoticeOne",bid);
		
		if(selectOneNotice == null) {
			
			throw new NoticeException("공지사항 가져오기 실패!");
		}
		
		return selectOneNotice;
	}

	@Override
	public int updateNoticeStatus(int bid, String status, SqlSessionTemplate sqlSession) {

		int result = sqlSession.update("Notice.updateNoticeStatus",bid);
		
		
		return result;
	}

	@Override
	public ArrayList SelectTeacher(int userNo, SqlSessionTemplate sqlSession) {
 		
		ArrayList list = (ArrayList) sqlSession.selectList("Notice.selectTeacher",userNo);
		
		return list;
	}

	
	


}










