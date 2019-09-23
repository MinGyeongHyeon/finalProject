package com.kh.fp.homework.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fp.common.CommonUtils;
import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.service.HomeworkService;
import com.kh.fp.homework.model.vo.IndividualHomework;
import com.kh.fp.homework.model.vo.PageInfo;
import com.kh.fp.homework.model.vo.Pagination;
import com.kh.fp.homework.model.vo.homework;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class HomeWorkController {

	@Autowired
	private HomeworkService hs;

	@RequestMapping(value = "homeWorkWrite.hw")
	public String homeWorkWrite(homework h,HttpSession session, Model model, HttpServletRequest request,
			@RequestParam(name = "photo", required = false) MultipartFile photo) {
		
		KinGardenClasses loginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		
		int userNo = loginUser.getTeacherNo();
		System.out.println("로그인유저"+loginUser);
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
		System.out.println(photo+"ss");
		if (!photo.getOriginalFilename().equals("")) {

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

				photo.transferTo(new File(filePath + "\\" + changeName + ext));

				System.out.println(at + "이야");

				int insertAttach = hs.insertAt(at);

			} catch (IllegalStateException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} else {

		}

		return "homeworkDiary/homeworkDiaryList";

	}
	
	@RequestMapping(value = "homeWorkIndiWrite.hw")
	public String homeWorkIndiWrite(homework h,HttpSession session, Model model, HttpServletRequest request,
			@RequestParam(name = "photo", required = false) MultipartFile photo) {
		KinGardenClasses loginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		
		int userNo = loginUser.getTeacherNo();
		System.out.println(userNo + "개인");
		
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
		
		System.out.println(photo.getOriginalFilename()+"ss");
		
		if (!photo.getOriginalFilename().equals("")) {
			
			System.out.println("사진입니다.");
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

				photo.transferTo(new File(filePath + "\\" + changeName + ext));

				System.out.println(at + "이야");

				int insertAttach = hs.insertAt(at);

			} catch (IllegalStateException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} else {

		}
		
		int userNo2 = loginUser.getTeacherNo();
		
		System.out.println("userNo2" + userNo2);
		
		
		
		
		return "redirect:/howmanypeopleinClass.ih";

	}
	
	
	@RequestMapping(value = "homeWorkIndividualWrite.hw")
	public String homeWorkIndividualWrite(Model model,HttpSession session, HttpServletRequest request) {

		KinGardenClasses loginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		
		
		String Numarray = request.getParameter("array");
		String NameArray = request.getParameter("content");
		
		String[] childrenNum = Numarray.split(",");
		System.out.println(childrenNum[0]);
		System.out.println(childrenNum[1]);
		String [] childrenName = NameArray.split(",");
		System.out.println(childrenName[0]);
		System.out.println(childrenName[1]);
		
		ArrayList<IndividualHomework> homeless = new ArrayList<>();
		IndividualHomework abc = null;
		
		int selectBoardNum = hs.selectBoardNum();
		
		for(int j = 0; j < childrenNum.length; j++) {
		
			abc= new IndividualHomework();
			
			abc.setChildrenNo(Integer.parseInt(childrenNum[j]));
			abc.setBoardContent(childrenName[j]);
			abc.setBoardNum(selectBoardNum);
			
			homeless.add(abc);
		}
		
		int insertIndiHomeWork = hs.insertIndiHomework(homeless);
		
		System.out.println(homeless+"어레이리스트의 홈리스노숙자");
		return "homeworkDiary/homeworkDiaryList";

	}
	
	
	@RequestMapping(value = "homeworklist.hw")
	public String homeworklist(Model model,HttpSession session, HttpServletRequest request,@ModelAttribute("loginUser") Member loginUser) {

	
		
		
		KinGardenClasses TloginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		KinGardenClasses CloginUser = (KinGardenClasses)session.getAttribute("childrenKing");

		int userNo = 0;
		String userC = null;
		int currentPage = 1;
		
		userNo=loginUser.getUserNo();
		String classification = loginUser.getClassification();
		
		if(classification.equals("원장님")) {
			
//			userNo = TloginUser.getTeacherNo();
//			userC = "선생님";
//			System.out.println("선생님");
			
		}else if(classification.equals("학부모")) {
			
			userNo = CloginUser.getChildrenNo();
			int tNo = CloginUser.getTeacherNo();
			System.out.println(tNo+"선생님 번호");
			userC = "원아";
			System.out.println("원아");
		}else {
			userNo = TloginUser.getTeacherNo();
			userC = "선생님";
			System.out.println("선생님");
			
		}
		

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
		ArrayList<homework> nList;
			
		int listCount = hs.getTListCount(userNo);
		
		if(listCount != 0) {
			
		System.out.println(listCount + "개");
			
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
		nList = hs.selectThomework(pi, userNo);
		
		model.addAttribute("nList", nList);
		model.addAttribute("pi", pi);
			
		}
		
		return "homeworkDiary/homeworkDiaryList";

	}
	
	
	@RequestMapping(value = "homeworkDetail.hw")
	public String homeworkDetail(Model model,HttpSession session, HttpServletRequest request) {
		
		int bid = Integer.parseInt(request.getParameter("bid"));
		
		KinGardenClasses TloginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		KinGardenClasses CloginUser = (KinGardenClasses)session.getAttribute("childrenKing");
		
		
		ArrayList<homework> HList;
		int userNo = 0;
		String userC = null;
		int currentPage = 1;
		
		if(TloginUser != null) {
			
			userNo = TloginUser.getTeacherNo();
			System.out.println(userNo+"선생님");

			HList = hs.SelectOneT(userNo,bid);
			
			System.out.println(bid + "zz");
			System.out.println(userNo + "ss");
			
			model.addAttribute("HList",HList);
			System.out.println("리스트는" + HList);
			
		}else if(CloginUser != null) {
			
			userNo = CloginUser.getChildrenNo();
			System.out.println(userNo+"원아");
			int tNo = CloginUser.getTeacherNo();
			System.out.println(tNo+"선생님 번호");
			
			userC = "원아";
			HList = hs.SelectOneT(userNo,bid);
			
			System.out.println("원아");
			model.addAttribute("HList",HList);
			System.out.println("리스트는" + HList);
			
		}
		

		return "homeworkDiary/homeworkDetail";
	}
	
	@RequestMapping(value = "updateHomework.hw")
	public String updateHomework(Model model,HttpServletRequest request, HttpServletResponse response) {
		
		int bid = Integer.parseInt(request.getParameter("bid"));
		
		String status = "Y";
	
		int result = hs.UpdateNoticeStatus(bid,status);
		
		System.out.println(result);
		

		return "homeworklist.hw";

	}

}















