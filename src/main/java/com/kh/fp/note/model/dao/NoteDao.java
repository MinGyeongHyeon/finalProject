package com.kh.fp.note.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.vo.Note;
import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.note.model.vo.noteKindergarden;

public interface NoteDao {

	ArrayList<noteKindergarden> selectUserList(SqlSessionTemplate sqlSession) throws NoteException;

	//보낸 쪽지함 리스트 조회
	ArrayList<Note> selectSentNoteList(SqlSessionTemplate sqlSession, PageInfo pi) throws NoteException;

	//리스트 카운트 가져오기
	int getListCount(SqlSessionTemplate sqlSession);

	//보낸 쪽지함 상세보기
	Note selectSentNoteOne(SqlSessionTemplate sqlSession, int noteNo) throws NoteException;

	//보낸 쪽지함 상세보기에서 삭제하기
	int deleteSentNoteOne(SqlSessionTemplate sqlSession);

}
