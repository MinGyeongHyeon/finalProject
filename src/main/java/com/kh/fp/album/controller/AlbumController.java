package com.kh.fp.album.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.common.CommonUtils;
import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.service.HomeworkService;
import com.kh.fp.homework.model.vo.homework;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class AlbumController {



	@RequestMapping(value = "album.ab")
	public String albumList(Model model) {
	
		System.out.println("또잉");
	
	 return "album/albumList";
	}
	
	
	@RequestMapping(value = "albumWrite.ab")
	public String albumWrite(Model model) {
	
		System.out.println("또잉");
	
	 return "album/albumWrite";
	}		
	
	
}
