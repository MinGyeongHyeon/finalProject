package com.kh.fp.album.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.album.model.vo.Album;
import com.kh.fp.album.model.vo.PageInfo;
import com.kh.fp.member.model.vo.Attachment;

public interface AlbumDao {

	int insertAlbum(SqlSessionTemplate sqlSession, Album a);

	int insertAtt(SqlSessionTemplate sqlSession, Attachment at);

	int selectBoardNum(SqlSessionTemplate sqlSession);

	int ListCount(SqlSessionTemplate sqlSession, int userNo);

	ArrayList<Album> selectAlbumList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi);

	int ListTCount(SqlSessionTemplate sqlSession, int userNo);

	ArrayList<Album> selectTAlbumList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi);

}
