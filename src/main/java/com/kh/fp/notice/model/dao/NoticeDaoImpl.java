package com.kh.fp.notice.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.tools.ant.Project;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.notice.model.exception.NoticeException;
import com.kh.fp.notice.model.vo.Notice;
import com.kh.fp.notice.model.vo.NoticeWho;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	
	//notice insert용
	@Override
	public String insertNotice(SqlSessionTemplate sqlSession, Notice n) throws NoticeException {
		System.out.println("여기는 공지사항 다오" + n);
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
		System.out.println("여기는 누구 다오");
		
		ArrayList Who = (ArrayList) sqlSession.selectList("Notice.selectWho",userNo);
		
		return  Who;
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
		list = (ArrayList) sqlSession.selectList("Notice.selectList",noticeWho);
		
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

	

}










