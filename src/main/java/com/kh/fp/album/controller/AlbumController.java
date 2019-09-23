package com.kh.fp.album.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.album.model.service.AlbumService;
import com.kh.fp.album.model.vo.Album;
import com.kh.fp.album.model.vo.PageInfo;
import com.kh.fp.album.model.vo.Pagination;
import com.kh.fp.common.CommonUtils;
import com.kh.fp.homework.model.service.HomeworkService;
import com.kh.fp.homework.model.vo.HomeWorkChildren;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.member.model.vo.OnOff;
import com.kh.fp.returnHome.model.vo.ChildrenClass;



@Controller
@SessionAttributes("loginUser")
public class AlbumController {

	@Autowired
	private HomeworkService hs;
	@Autowired
	private AlbumService abs;

	@RequestMapping(value = "album.ab")
	public String albumList(Model model,HttpSession session, HttpServletRequest request,@ModelAttribute("loginUser") Member loginUser ,@SessionAttribute("of") OnOff of) {
	
		int userNo=0;
		
		userNo=loginUser.getUserNo();
		System.out.println(userNo + "입니다.");
		ArrayList<Album> album;
		
		System.out.println("of 의 유치원 번호 : " + of.getKinderNo());
		
	    String classification = loginUser.getClassification();
	    System.out.println("분류는"+classification);
	    int currentPage = 1;

	     if (request.getParameter("currentPage") != null) {
	         currentPage = Integer.parseInt(request.getParameter("currentPage"));
	      }
	    
	   
	     
	     int listCount = 0;
	     
	    if(classification.equals("원장님")) {
	         listCount = abs.getListCount(userNo);
	         System.out.println("listCount : " + listCount);
	         
	         
	      }else if(classification.equals("학부모")) {
	  		KinGardenClasses TloginUser = (KinGardenClasses)session.getAttribute("teacherKing");
	  		userNo = TloginUser.getTeacherNo();
	        listCount = abs.getTListCount(userNo);
	        System.out.println("listCount :ㅎㅎ " + listCount);
	      
	      
	      }else {
	         listCount = abs.getTListCount(userNo);
	         System.out.println("listCount :ㅋㅋ " + listCount);
	      }

	    PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		
	    if(classification.equals("원장님")) {
	    	album = abs.selectAlbumRequestList(pi, userNo);
	    	System.out.println(album+"zz");
	    	model.addAttribute("album", album);
         }else if(classification.equals("학부모")) {
        	 album = abs.selectTAlbumRequestList(pi, userNo);
        	 model.addAttribute("album", album);
         }else {
        	 album = abs.selectTAlbumRequestList(pi, userNo);
        	 model.addAttribute("album", album);
         }

		
		model.addAttribute("pi", pi);
		
		
		
	 return "album/albumList";
	}
	
	
	@RequestMapping(value = "albumWrite.ab")
	public String albumWrite(Album a,Model model,HttpSession session,HttpServletRequest request,
			@RequestParam("file") MultipartFile[] file ) {

		KinGardenClasses loginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		
		int classNo = loginUser.getClassNo();
		int userNo = loginUser.getTeacherNo();
		
		a.setClassNo(classNo);
		a.setWriter(userNo);
		
		System.out.println("앨범 ::::::"+a);
		
		int albumA = abs.insertAlbum(a);

		if(albumA >= 0) {
		
		String hv = request.getParameter("hv");
			
		String [] num = hv.split("&");
		
			
		System.out.println(hv);
			
		for(int i = 0; i < num.length; i++){
			
			System.out.println(num[i]+"입니다");
				
		}
		
		for(int i = 0; i < file.length; i++) {
			
			if (!file[i].getOriginalFilename().equals("")) {
			 System.out.println(file[i].getOriginalFilename()+"ss");
			 
			  Attachment at = new Attachment(); 
			  
			  String root = request.getSession().getServletContext().getRealPath("resources");
			  
			  String filePath = root + "\\uploadFiles"; 
			  
			  String originFileName = file[i].getOriginalFilename(); 
			  String ext =originFileName.substring(originFileName.lastIndexOf(".")); 
			  String changeName = CommonUtils.getRandomString();
			  
			  try {
					at.setOrigineName(originFileName);
					at.setChangeName(changeName);
					at.setFilePath(filePath);
					if(i == 0) {
					at.setFileLevel("1");
					}else {
					at.setFileLevel("2");
					}
					at.setAttachType("앨범");
					at.setAlbumchildrenNo(num[i]);
					at.setBoardNo(1);

					file[i].transferTo(new File(filePath + "\\" + changeName + ext));

					System.out.println(at + "이야");

					int insertAttach = abs.insertAt(at);
			  
			  } catch (IllegalStateException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			  
			  }else {
			  
			  }
			  }
			 
		}
		
		
		return "album/albumList";
	}	
	
	@RequestMapping(value = "albumWhoIn.ab")
	public ModelAndView albumWhoIn(ModelAndView mv, HttpSession session,HttpServletRequest request) {
		
		
		KinGardenClasses loginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		
		int userNo2 = loginUser.getTeacherNo();
		int classNum = hs.selectClassNum(userNo2);
		String className = hs.selectClassName(userNo2);
		
		ChildrenClass c = null;

		Attachment fileList = null;
		
		ArrayList<HomeWorkChildren> list =  hs.selectChildren(userNo2);
		System.out.println("list::::::"+list);
		
		mv.addObject("classNum",classNum);
		mv.addObject("className",className);
		mv.addObject("list",list);
		mv.setViewName("album/albumWrite");
		
		
		return mv;
	}	
	
	
}
