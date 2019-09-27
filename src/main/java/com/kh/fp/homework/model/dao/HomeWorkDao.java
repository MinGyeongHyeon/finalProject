package com.kh.fp.homework.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.album.model.vo.Album;
import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.HomeWorkApply;
import com.kh.fp.homework.model.vo.HomeWorkChildren;
import com.kh.fp.homework.model.vo.IndividualHomework;
import com.kh.fp.homework.model.vo.PageInfo;
import com.kh.fp.homework.model.vo.homework;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.notice.model.vo.NoticeWho;
import com.kh.fp.returnHome.model.vo.ChildrenClass;

public interface HomeWorkDao {

	int insertHomeWork(SqlSessionTemplate sqlSession, homework h) throws HomeWorkException;

	int selectHowmany(SqlSessionTemplate sqlSession, int classNum);

	int selectBoardNum(SqlSessionTemplate sqlSession, Attachment at);

	int insertAt(SqlSessionTemplate sqlSession, Attachment at);

	int selectClassNum(SqlSessionTemplate sqlSession, int userNo2);

	ArrayList<HomeWorkChildren> selectChildrenName(SqlSessionTemplate sqlSession, int userNo2);

	String selectClassName(SqlSessionTemplate sqlSession, int userNo2);

	int insertIndiH(SqlSessionTemplate sqlSession, ArrayList<IndividualHomework> homeless);

	int selectBoardNum(SqlSessionTemplate sqlSession);

	int TListCount(SqlSessionTemplate sqlSession, int userNo);

	ArrayList<homework> selectTH(SqlSessionTemplate sqlSession, int userNo, PageInfo pi);

	ArrayList<homework> selectOneT(SqlSessionTemplate sqlSession, int userNo, int bid);

	ArrayList<homework> selectOneC(SqlSessionTemplate sqlSession, int userNo, int bid);

	int updateH(SqlSessionTemplate sqlSession, String status, int bid);

	int insertApply(SqlSessionTemplate sqlSession, int bid, String content, String userName);

	ArrayList<HomeWorkApply> SearchApply(SqlSessionTemplate sqlSession, int bid);

	int CListCount(SqlSessionTemplate sqlSession, NoticeWho noticeWho);

	ArrayList<NoticeWho> selectTNum(SqlSessionTemplate sqlSession, int userNo);

	ArrayList<homework> selectChomework(SqlSessionTemplate sqlSession, PageInfo pi, NoticeWho noticeWho);




}
