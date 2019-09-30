package com.kh.fp.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.admin.model.exception.CompanyListException;
import com.kh.fp.admin.model.vo.Company;

@Repository
public class AdminDaoImpl implements AdminDao{

	@Override
	public ArrayList<Company> companyList(SqlSessionTemplate sqlSession) throws CompanyListException {
		ArrayList<Company> comList = null;
		comList = (ArrayList)sqlSession.selectList("Company.companyList");
		if(comList == null) {
			throw new CompanyListException("정보조회 실패!");
		}
		return comList;
	}

	@Override
	public ArrayList<Company> admsearchList(SqlSessionTemplate sqlSession, String content) throws CompanyListException {
		ArrayList<Company> list = null;
		list = (ArrayList)sqlSession.selectList("Company.searchList",content);
		if(list == null) {
			throw new CompanyListException("검색조회실패");
		}
		return list;
	}

}
