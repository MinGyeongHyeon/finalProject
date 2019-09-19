package com.kh.fp.admin.model.service;

import java.util.ArrayList;

import com.kh.fp.admin.model.exception.CompanyListException;
import com.kh.fp.admin.model.vo.Company;

public interface AdminService {

	ArrayList<Company> companyList() throws CompanyListException;

}
