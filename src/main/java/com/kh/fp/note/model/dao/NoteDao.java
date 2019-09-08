package com.kh.fp.note.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.exception.NoteException;
import com.kh.fp.note.model.vo.Kindergarden;

public interface NoteDao {

	ArrayList<Kindergarden> selectUserList(SqlSessionTemplate sqlSession) throws NoteException;

}