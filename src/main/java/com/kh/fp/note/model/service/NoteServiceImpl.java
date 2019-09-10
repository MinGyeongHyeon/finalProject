package com.kh.fp.note.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.dao.NoteDao;
import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.vo.Note;
import com.kh.fp.note.model.vo.noteKindergarden;

@Service
public class NoteServiceImpl implements NoteService{
	@Autowired
	private NoteDao nd;
	@Autowired
	private SqlSessionTemplate sqlSession;


	@Override
	public ArrayList<noteKindergarden> selectUserList() throws NoteException {
		System.out.println("서비스 호출!!!");

		return nd.selectUserList(sqlSession);
	}


	//보낸 쪽지함 리스트 조회
	@Override
	public ArrayList<Note> selectSentNoteList() throws NoteException {
		System.out.println("보낸 쪽지함 서비스");

		return nd.selectSentNoteList(sqlSession);
	}

}
