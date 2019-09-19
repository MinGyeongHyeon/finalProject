package com.kh.fp.note.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.vo.Note;
import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.note.model.vo.noteKindergarden;

@Repository
public class NoteDaoImpl implements NoteDao{

	//쪽지보내기 유치원 리스트 불러오기
	@Override
	public ArrayList<noteKindergarden> selectUserList(SqlSessionTemplate sqlSession) throws NoteException {
		System.out.println("dao 호출!!!");

		ArrayList<noteKindergarden> kArr = null;
		kArr = (ArrayList)sqlSession.selectList("Note.selectKinderArr");

		System.out.println("dao ::: " + kArr);

		if(kArr == null) {
			throw new NoteException("리스트 불러오기 실패!");
		}

		return kArr;
	}

	//보낸 쪽지함 리스트 조회
//	@Override
//	public ArrayList<Note> selectSentNoteList(SqlSessionTemplate sqlSession) throws NoteException {
//		System.out.println("보낸 쪽지함 dao 호출");
//
//		ArrayList<Note> nList = null;
//		nList = (ArrayList) sqlSession.selectList("Note.selectSentNoteList");
//
//		System.out.println("dao :::" + nList);
//
//		if(nList == null) {
//			throw new NoteException("리스트 불러오기 실패!");
//		}
//
//		return nList;
//	}

	//페이징 처리 후 보낸쪽지함 리스트
	@Override
	public ArrayList<Note> selectSentNoteList(SqlSessionTemplate sqlSession, PageInfo pi) throws NoteException {
		System.out.println("보낸 쪽지함 dao 호출");

		ArrayList<Note> nList = null;

		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		nList = (ArrayList)sqlSession.selectList("Note.selectSentNoteList", null, rowBounds);

		return nList;
	}



	//리스트 카운트 조회
	@Override
	public int getListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("Note.selectListCount");
	}

	//보낸 쪽지함 상세보기
	@Override
	public Note selectSentNoteOne(SqlSessionTemplate sqlSession, int noteNo) throws NoteException {
		System.out.println("noteNo :::" + noteNo);

		Note n = (Note)sqlSession.selectOne("Note.selectSentNoteOne", noteNo);

		System.out.println("noteNo :::" + noteNo);
		System.out.println("n :::: " + n);

		if(n == null) {
			throw new NoteException("쪽지 상세보기 실패!");
		}

		return n;
	}

	//보낸 쪽지함 상세보기에서 삭제하기
	@Override
	public int deleteSentNoteOne(SqlSessionTemplate sqlSession, int noteNo) throws NoteException {

		int result = sqlSession.update("Note.deleteSentNoteOne", noteNo);

		System.out.println("result :::" + result);

		if(result == 0) {
			throw new NoteException("쪽지 삭제하기 실패!");
		}

		return result;
	}

	//쪽지보내기
	@Override
	public int insertNote(SqlSessionTemplate sqlSession, int kinderNo) throws NoteException {

		int result = sqlSession.insert("Note.insertNote", kinderNo);

		System.out.println(result);

		if(result == 0) {
			throw new NoteException("쪽지 보내기 실패!");
		}

		return result;
	}

	//받은 쪽지함 리스트 카운드 가져오기
	@Override
	public int getRecieveListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("Note.recieveListCount");
	}

	//받은 쪽지함 리스트 조회
	@Override
	public ArrayList<Note> selectRecieveNoteList(SqlSessionTemplate sqlSession, PageInfo pi) throws NoteException{
		System.out.println("받은 쪽지함 dao 호출");

		ArrayList<Note> rList = null;

		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		rList = (ArrayList)sqlSession.selectList("Note.selectRecieveNoteList", null, rowBounds);

		return rList;
	}

	//받은 쪽지함 상세보기
	@Override
	public Note selectRecieveNoteOne(SqlSessionTemplate sqlSession, int noteNo) throws NoteException {
		System.out.println("noteNo :::" + noteNo);

		Note note = (Note)sqlSession.selectOne("Note.selectRecieveNoteOne", noteNo);

		System.out.println("noteNo :::" + noteNo);
		System.out.println("note :::: " + note);

		if(note == null) {
			throw new NoteException("쪽지 상세보기 실패!");
		}

		return note;
	}

	//받은쪽지함 상세내용 조회에서 삭제하기
	@Override
	public int deleteRecieveNoteOne(SqlSessionTemplate sqlSession, int noteNo) throws NoteException {
		int result = sqlSession.update("Note.deleteRecieveNoteOne", noteNo);

		System.out.println("result :::" + result);

		if(result == 0) {
			throw new NoteException("쪽지 삭제하기 실패!");
		}

		return result;
	}

	//쪽지 확인 여부 체크
	@Override
	public int checkedYN(SqlSessionTemplate sqlSession, int noteNo) throws NoteException {
		int result = sqlSession.update("Note.checkedYN", noteNo);

		System.out.println(result);

		if(result == 0) {
			throw new NoteException("쪽지 확인여부 변경 실패!");
		}
		return result;
	}


}
