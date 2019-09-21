package com.kh.fp.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fp.admin.model.exception.CompanyListException;
import com.kh.fp.admin.model.service.AdminService;
import com.kh.fp.admin.model.vo.Company;

@Controller
@SessionAttributes("loginUser")
public class AdminController {
	@Autowired
	private AdminService ad;
	
	@RequestMapping(value="companyList.ad")
	public String companyList(Model mv,Company com) {
		
		try {
			ArrayList<Company> comlist = ad.companyList();
			mv.addAttribute("list",comlist);
			return "admin/companyList";
			
		} catch (CompanyListException e) {
			mv.addAttribute("msg",e.getMessage());
			return "common/errorPage";
		}
		
		
	}
	
	
}
