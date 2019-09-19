package com.kh.fp.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.admin.model.dao.AdminDao;
import com.kh.fp.admin.model.exception.CompanyListException;
import com.kh.fp.admin.model.vo.Company;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao ad;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public ArrayList<Company> companyList() throws CompanyListException {
		System.out.println("adminServiceimpl");
		return ad.companyList(sqlSession);
	}
}
