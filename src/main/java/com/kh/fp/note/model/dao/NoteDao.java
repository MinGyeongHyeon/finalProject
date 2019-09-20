package com.kh.fp.note.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.vo.Note;
import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.note.model.vo.noteKindergarden;

public interface NoteDao {

	//쪽지보내기 유치원 리스트 불러오기
	ArrayList<noteKindergarden> selectUserList(SqlSessionTemplate sqlSession) throws NoteException;

	//보낸 쪽지함 리스트 조회
	ArrayList<Note> selectSentNoteList(SqlSessionTemplate sqlSession, PageInfo pi, int userNo) throws NoteException;
	ArrayList<Note> selectTeacherSentNoteList(SqlSessionTemplate sqlSession, PageInfo pi, int userNo) throws NoteException;

	//보낸 쪽지함 관리자 리스트 카운트 가져오기
	int getListCount(SqlSessionTemplate sqlSession, int userNo);

	//보낸 쪽지함 상세보기
	Note selectSentNoteOne(SqlSessionTemplate sqlSession, int noteNo) throws NoteException;

	//보낸 쪽지함 상세보기에서 삭제하기
	int deleteSentNoteOne(SqlSessionTemplate sqlSession, int noteNo) throws NoteException;

	//쪽지 보내기
	int insertNote(SqlSessionTemplate sqlSession, int kinderNo) throws NoteException;

	//받은 쪽지함 리스트 카운트 가져오기
	int getRecieveListCount(SqlSessionTemplate sqlSession, int userNo);

	//받은 쪽지함 리스트 조회
	ArrayList<Note> selectRecieveNoteList(SqlSessionTemplate sqlSession, PageInfo pi, int userNo) throws NoteException;
	ArrayList<Note> selectTeacherRecieveNoteList(SqlSessionTemplate sqlSession, PageInfo pi, int userNo) throws NoteException;

	//받은 쪽지함 상세보기
	Note selectRecieveNoteOne(SqlSessionTemplate sqlSession, int noteNo) throws NoteException;

	//받은쪽지함 상세내용 조회에서 삭제하기
	int deleteRecieveNoteOne(SqlSessionTemplate sqlSession, int noteNo) throws NoteException;

	//쪽지 확인 여부 체크
	int checkedYN(SqlSessionTemplate sqlSession, int noteNo) throws NoteException;



}
