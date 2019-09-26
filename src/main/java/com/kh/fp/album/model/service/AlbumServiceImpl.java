package com.kh.fp.album.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.album.model.dao.AlbumDao;
import com.kh.fp.album.model.vo.Album;
import com.kh.fp.album.model.vo.PageInfo;
import com.kh.fp.member.model.vo.Attachment;

@Service
public class AlbumServiceImpl implements AlbumService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private AlbumDao abd;

	@Override
	public int insertAlbum(Album a) {
			// TODO Auto-generated method stub
			System.out.println("여기는 앨범 내용 서비스");
			
			int insertHomeWork = abd.insertAlbum(sqlSession,a);
			
			return insertHomeWork;
		}

	@Override
	public int insertAt(Attachment at) {

		System.out.println("여기는 앨범 내용 서비스");
		
		int BoardNo = abd.selectBoardNum(sqlSession);
		at.setBoardNo(BoardNo);
		
		
		int insertAt = abd.insertAtt(sqlSession,at);
		
		return insertAt;
	}

	@Override
	public int getListCount(int userNo) {

		int ListCount = abd.ListCount(sqlSession,userNo);
		
		return ListCount;
	}

	@Override
	public int getTListCount(int userNo) {

		int ListCount = abd.ListTCount(sqlSession,userNo);
		
		return ListCount;
	}

	@Override
	public ArrayList<Album> selectAlbumRequestList(PageInfo pi, int userNo) {

		 ArrayList<Album> alb = null;
		 
		 alb = abd.selectAlbumList(sqlSession,userNo,pi);
		
		return alb;
	}

	@Override
	public ArrayList<Album> selectTAlbumRequestList(PageInfo pi, int userNo) {

		 ArrayList<Album> alb = null;
		 
		 alb = abd.selectTAlbumList(sqlSession,userNo,pi);
		
		return alb;
	}

	@Override
	public int getCListCount(int userNo) {

		int ListCount = abd.ListCCount(sqlSession,userNo);
		
		return ListCount;
	}

	@Override
	public ArrayList<Album> selectCAlbumRequestList(PageInfo pi, int userNo) {
		
		ArrayList<Album> alb = null;
		 
		 alb = abd.selectCAlbumList(sqlSession,userNo,pi);
		
		return alb;
	}

	@Override
	public int getTNum(int userNo) {

		int tNum = abd.SelectTnum(sqlSession,userNo);
		
		return tNum;
	}

	@Override
	public ArrayList<Album> selectAlbum(int bid) {
		
		ArrayList<Album> a = null;
		
		a = abd.selectAlbumDetail(sqlSession,bid);
		
		
		return a;
	}

	@Override
	public String selectAlbum(String name) {
		System.out.println(name+"이자식");
		String Cname = abd.selectName(sqlSession,name);
		
		return Cname;
	}

	@Override
	public int selectSomeThing(String input, int userNo) {

		int Some = abd.selectSome(sqlSession,input,userNo);
		
		
		return Some;
	}

	@Override
	public ArrayList<Album> selectSelectAlbum(int no,int bid) {
		ArrayList<Album> a = null;
		
		a = abd.selectAlbumSearch(sqlSession,no,bid);
		
		
		return a;	
		
	}

}
