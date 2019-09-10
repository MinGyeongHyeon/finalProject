package com.kh.fp.notice.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.notice.model.exception.NoticeException;
import com.kh.fp.notice.model.vo.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	
	//notice insert용
	@Override
	public String insertNotice(SqlSessionTemplate sqlSession, Notice n) throws NoticeException {
		System.out.println("여기는 공지사항 다오" + n);
		
		int notice = sqlSession.insert("Notice.insertNotice",n);
		
		String insert = "";
		if(notice <= 0) {
			
			insert = "실패";
			throw new NoticeException("Notice insert 실패");
		}else {
			
			insert = "성공";
		}
		
		return insert;
	}

	@Override
	public ArrayList selectWho(SqlSessionTemplate sqlSession, int userNo) {
		System.out.println("여기는 누구 다오");
		
		ArrayList Who = (ArrayList) sqlSession.selectList("Notice.selectWho",userNo);
		
		System.out.println(Who);
		
		return  Who;
	}

}
