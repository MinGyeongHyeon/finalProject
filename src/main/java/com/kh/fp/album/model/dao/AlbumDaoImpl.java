package com.kh.fp.album.model.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

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


	@Override
	public int ListCCount(SqlSessionTemplate sqlSession, int userNo) {
		
		int content = sqlSession.selectOne("Album.selectCListCount",userNo);
		
		return content;
	}


	@Override
	public ArrayList<Album> selectCAlbumList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi) {
		 ArrayList<Album> alb = null;
		 int offset = (pi.getCurrentPage() -1 ) * pi.getLimit();
			
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		alb = (ArrayList)sqlSession.selectList("Album.selectCList",userNo,rowBounds);
		System.out.println("zz"+alb);
		
		return alb;
	}


	@Override
	public int SelectTnum(SqlSessionTemplate sqlSession, int userNo) {

		int Tnum = sqlSession.selectOne("Album.selectTnum",userNo);
		
		return Tnum;
	}


	@Override
	public ArrayList<Album> selectAlbumDetail(SqlSessionTemplate sqlSession, int bid) {

		ArrayList<Album> a = null;
		
		a = (ArrayList)sqlSession.selectList("Album.selectDetail",bid);
		System.out.println("list:::::"+a);
		
		return a;
	}



	
	
}













