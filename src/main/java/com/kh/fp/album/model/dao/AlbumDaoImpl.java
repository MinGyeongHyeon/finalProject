package com.kh.fp.album.model.dao;

import java.io.Serializable;
import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.album.model.vo.Album;
import com.kh.fp.album.model.vo.PageInfo;
import com.kh.fp.member.model.vo.Attachment;
@Repository
public class AlbumDaoImpl implements AlbumDao{

	@Override
	public int insertAlbum(SqlSessionTemplate sqlSession, Album a) {

		System.out.println("여기는 앨범내용 다오" + a);
		
		int content = sqlSession.insert("Album.insertAlbum",a);
		
		
		return content;
	}


	@Override
	public int selectBoardNum(SqlSessionTemplate sqlSession) {

		int Num = sqlSession.selectOne("Album.selectNum");
		
		return Num;
	}

	@Override
	public int insertAtt(SqlSessionTemplate sqlSession, Attachment at) {
		
		
		System.out.println("여기는 앨범 insert 다오" + at);
		
		
		int content = sqlSession.insert("Album.insertAt",at);
		
		return content;
	}


	@Override
	public int ListCount(SqlSessionTemplate sqlSession, int userNo) {

		System.out.println(userNo+"번");
		
		int content = sqlSession.selectOne("Album.selectListCount",userNo);
		
		System.out.println(content+"개");
		
		return content;
	}
	
	


	@Override
	public ArrayList<Album> selectAlbumList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi) {

		 ArrayList<Album> alb = null;
		 
		 int offset = (pi.getCurrentPage() -1 ) * pi.getLimit();
			
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		alb = (ArrayList)sqlSession.selectList("Album.selectList",userNo,rowBounds);
		
		return alb;
	}


	@Override
	public int ListTCount(SqlSessionTemplate sqlSession, int userNo) {
		
		int content = sqlSession.selectOne("Album.selectTListCount",userNo);
		
		System.out.println(content+"개");
		
		return content;
	}


	@Override
	public ArrayList<Album> selectTAlbumList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi) {
		
		ArrayList<Album> alb = null;
		 System.out.println("눈물..");
		 int offset = (pi.getCurrentPage() -1 ) * pi.getLimit();
			
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		alb = (ArrayList)sqlSession.selectList("Album.selectTList",userNo,rowBounds);
		System.out.println("zz"+alb);
		return alb;
	}



	
	
}













