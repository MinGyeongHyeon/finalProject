package com.kh.fp.note.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.dao.NoteDao;
import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.vo.Note;
import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.note.model.vo.noteKindergarden;

@Service
public class NoteServiceImpl implements NoteService{
	@Autowired
	private NoteDao nd;
	@Autowired
	private SqlSessionTemplate sqlSession;

	//쪽지보내기 유치원 리스트 불러오기
	@Override
	public ArrayList<noteKindergarden> selectUserList() throws NoteException {
		System.out.println("서비스 호출!!!");

		return nd.selectUserList(sqlSession);
	}


	//보낸 쪽지함 리스트 조회(관리자)
	@Override
	public ArrayList<Note> selectSentNoteList(PageInfo pi, int userNo) throws NoteException {
		System.out.println("보낸 쪽지함 서비스");
		System.out.println("userNo ::: " + userNo);

		return nd.selectSentNoteList(sqlSession, pi, userNo);
	}
	//보낸 쪽지함 리스트 조회(원장님)
	@Override
	public ArrayList<Note> selectTeacherSentNoteList(PageInfo pi, int userNo) throws NoteException {
		System.out.println("보낸 쪽지함 서비스");
		System.out.println("userNo ::: " + userNo);

		return nd.selectTeacherSentNoteList(sqlSession, pi, userNo);
	}

	//보낸 쪽지함 리스트 카운트 가져오기
	@Override
	public int getListCount(int userNo) {
		return nd.getListCount(sqlSession, userNo);
	}

	//보낸 쪽지함 상세보기
		@Override
		public Note selectSentNoteOne(int noteNo) throws NoteException {

			/* System.out.println(noteNo); */

			return nd.selectSentNoteOne(sqlSession, noteNo);
	}

	//보낸 쪽지함 상세보기에서 삭제하기
	@Override
	public int deleteSentNoteOne(int noteNo) throws NoteException {

		return nd.deleteSentNoteOne(sqlSession, noteNo);
	}


	//쪽지 보내기
	@Override
	public int insertNote(int kinderNo) throws NoteException {
		return nd.insertNote(sqlSession, kinderNo);
	}

	//받은 쪽지함 리스트 카운트 가져오기
	@Override
	public int getRecieveListCount(int userNo) {
		return nd.getRecieveListCount(sqlSession, userNo);
	}


	//받은 쪽지함 리스트 조회
	@Override
	public ArrayList<Note> selectRecieveNoteList(PageInfo pi, int userNo) throws NoteException {
		System.out.println("받은 쪽지함 서비스");

		return nd.selectRecieveNoteList(sqlSession, pi, userNo);
	}
	//받은 쪽지함 리스트 조회(원장님)
	@Override
	public ArrayList<Note> selectTeacherRecieveNoteList(PageInfo pi, int userNo) throws NoteException {
		System.out.println("받은 쪽지함 서비스");

		return nd.selectTeacherRecieveNoteList(sqlSession, pi, userNo);
	}

	//받은 쪽지함 상세보기
	@Override
	public Note selectRecieveNoteOne(int noteNo) throws NoteException {

		return nd.selectRecieveNoteOne(sqlSession, noteNo);
	}


	//받은쪽지함 상세내용 조회에서 삭제하기
	@Override
	public int deleteRecieveNoteOne(int noteNo) throws NoteException {

		return nd.deleteRecieveNoteOne(sqlSession, noteNo);
	}

	//쪽지 확인 여부 체크
	@Override
	public int checkedYN(int noteNo) throws NoteException {

		return nd.checkedYN(sqlSession, noteNo);
	}






	//보낸 쪽지함 여러개 삭제
//	@Override
//	public int deleteSentNotes(String noteNo) {
//		return nd.deleteSentNotes(sqlSession, noteNo);
//	}

}
