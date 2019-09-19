package com.kh.fp.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.admin.model.exception.CompanyListException;
import com.kh.fp.admin.model.vo.Company;

public interface AdminDao {

	ArrayList<Company> companyList(SqlSessionTemplate sqlSession) throws CompanyListException;

}
