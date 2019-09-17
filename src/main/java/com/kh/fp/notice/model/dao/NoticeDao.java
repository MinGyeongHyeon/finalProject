package com.kh.fp.notice.model.dao;

import java.util.ArrayList;

import org.apache.tools.ant.Project;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.notice.model.exception.NoticeException;
import com.kh.fp.notice.model.vo.Notice;
import com.kh.fp.notice.model.vo.NoticeWho;

@Controller
public interface NoticeDao {

	String insertNotice(SqlSessionTemplate sqlSession, Notice n) throws NoticeException;

	ArrayList selectWho(SqlSessionTemplate sqlSession, int userNo);

	int getListCount(SqlSessionTemplate sqlSession, NoticeWho noticeWho);

	ArrayList<Notice> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi, NoticeWho noticeWho);

	int updateCount(SqlSessionTemplate sqlSession, int bid);

	Notice selectOneNotice(SqlSessionTemplate sqlSession, int bid)throws NoticeException;

	int updateNoticeStatus(int bid, String status, SqlSessionTemplate sqlSession);

	ArrayList selectWhoChildren(SqlSessionTemplate sqlSession, int selectNum);

	ArrayList selectWhoMaster(SqlSessionTemplate sqlSession, int userNo);

	int selectChildrenNum(SqlSessionTemplate sqlSession, int userNo);

	ArrayList<Notice> selectBoardChildrenList(SqlSessionTemplate sqlSession, PageInfo pi, NoticeWho noticeWho);

	ArrayList SelectTeacher(int userNo, SqlSessionTemplate sqlSession);


}
