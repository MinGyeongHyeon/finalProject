package com.kh.fp.note.model.service;

import java.util.ArrayList;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.vo.Note;
import com.kh.fp.note.model.vo.NoteBox;
import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.note.model.vo.noteKindergarden;

public interface NoteService {
	//쪽지보내기 유치원 리스트 불러오기
	ArrayList<noteKindergarden> selectUserList() throws NoteException;

	//쪽지 보내기
	int sendNote(NoteBox nb) throws NoteException;


	//==========================================================================================
	//보낸쪽지함

	//보낸 쪽지함 리스트 조회(관리자)
	ArrayList<Note> selectSentNoteList(PageInfo pi, int userNo) throws NoteException;
	ArrayList<Note> selectTeacherSentNoteList(PageInfo pi, int userNo) throws NoteException;

	//보낸 쪽지함 관리자 리스트 카운트 가져오기
	int getListCount(int userNo) throws NoteException;

	//보낸 쪽지함 상세보기
	Note selectSentNoteOne(int noteNo) throws NoteException;

	//보낸 쪽지함 상세보기에서 삭제하기
	int deleteSentNoteOne(int noteNo) throws NoteException;


	//==========================================================================================
	//받은쪽지함

	//받은 쪽지함 리스트 카운트 가져오기
	int getRecieveListCount(int userNo);

	//받은 쪽지함 리스트 조회
	ArrayList<Note> selectRecieveNoteList(PageInfo pi, int userNo) throws NoteException;
	ArrayList<Note> selectTeacherRecieveNoteList(PageInfo pi, int userNo) throws NoteException;

	//받은 쪽지함 상세보기
	Note selectRecieveNoteOne(int noteNo) throws NoteException;

	//받은쪽지함 상세내용 조회에서 삭제하기
	int deleteRecieveNoteOne(int noteNo) throws NoteException;

	//쪽지 확인 여부 설정
	int checkedYN(int noteNo) throws NoteException;








	//보낸 쪽지함 여러개 삭제
	//int deleteSentNotes(String noteNo);

}
