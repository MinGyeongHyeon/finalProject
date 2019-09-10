package com.kh.fp.note.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.note.model.exception.NoteException;
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

}
