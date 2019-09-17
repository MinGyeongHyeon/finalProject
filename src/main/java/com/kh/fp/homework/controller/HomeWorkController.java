package com.kh.fp.homework.controller;


import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.fp.common.CommonUtils;
import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.service.HomeworkService;
import com.kh.fp.homework.model.vo.homework;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.member.model.vo.Member;



@Controller
@SessionAttributes("loginUser")
public class HomeWorkController {
	
	@Autowired
	private HomeworkService hs;


		@RequestMapping(value="homeWorkWrite.hw" )
		public String homeWorkWrite(homework h,Model model,HttpServletRequest request,@ModelAttribute("loginUser") Member loginUser,  @RequestParam(name="photo",required=false) MultipartFile photo) {
			int userNo = loginUser.getUserNo();
			
			
			h.setBoardtype("알림장");
			h.setKinderNo(1);
			h.setClassNum(2);
			h.setIndividualContent("없음");
			h.setWriter(userNo);
				
			System.out.println(h);
			try {
				hs.insertHomeWork(h);
				
			} catch (HomeWorkException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if(photo.getOriginalFilename() != null) {
			
			Attachment at = new Attachment();
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			
			String filePath = root + "\\uploadFiles";

			String originFileName = photo.getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeName = CommonUtils.getRandomString(); 
			
			
			 try {
				 at.setOrigineName(originFileName);
				 at.setChangeName(changeName);
				 at.setFilePath(filePath);
				 at.setFileLevel("1");
				 at.setAttachType("알림장");
				 at.setUserNo(userNo);
				 at.setBoardNo(1);
			
			 
				 photo.transferTo(new File(filePath+"\\"+changeName+ext));
				 
				 int insertAttach = hs.insertAt(at);
			 
			 
			 
			 } catch (IllegalStateException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			}else {

			}
			
			return "homeworkDiary/homeworkDiaryList";

		}

}
	















