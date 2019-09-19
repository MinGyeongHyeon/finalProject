package com.kh.fp.note.model.service;

import java.util.ArrayList;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.vo.Note;
import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.note.model.vo.noteKindergarden;

public interface NoteService {

	//쪽지보내기 유치원 리스트 불러오기
	ArrayList<noteKindergarden> selectUserList() throws NoteException;

	//보낸 쪽지함 리스트 조회
	ArrayList<Note> selectSentNoteList(PageInfo pi) throws NoteException;

	//보낸 쪽지함 리스트 카운드 가져오기
	int getListCount();

	//보낸 쪽지함 상세보기
	Note selectSentNoteOne(int noteNo) throws NoteException;

	//보낸 쪽지함 상세보기에서 삭제하기
	int deleteSentNoteOne(int noteNo) throws NoteException;

	//쪽지 보내기
	int insertNote(int kinderNo)  throws NoteException;

	//받은 쪽지함 리스트 카운트 가져오기
	int getRecieveListCount();

	//받은 쪽지함 리스트 조회
	ArrayList<Note> selectRecieveNoteList(PageInfo pi) throws NoteException;

	//받은 쪽지함 상세보기
	Note selectRecieveNoteOne(int noteNo) throws NoteException;

	//받은쪽지함 상세내용 조회에서 삭제하기
	int deleteRecieveNoteOne(int noteNo) throws NoteException;

	//쪽지 확인 여부 설정
	int checkedYN(int noteNo) throws NoteException;

	//보낸 쪽지함 여러개 삭제
	//int deleteSentNotes(String noteNo);

}
