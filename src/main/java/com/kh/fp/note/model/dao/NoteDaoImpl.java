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
	public int deleteSentNoteOne(SqlSessionTemplate sqlSession) {

		int result = sqlSession.update("Note.deleteSentNoteOne");

		System.out.println("result :::" + result);

		return 0;
	}


}
