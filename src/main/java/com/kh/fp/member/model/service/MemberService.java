package com.kh.fp.member.model.service;

import java.util.ArrayList;


import com.kh.fp.member.model.exception.JoinException;
import com.kh.fp.member.model.exception.LoginException;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.member.model.vo.KidMember;
import com.kh.fp.member.model.vo.KinGardenClass;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.note.model.vo.PageInfo;

public interface MemberService {

	Member login(Member m) throws LoginException;

	int insertUser(Member m) throws JoinException;

	Member idcheck(Member m);

	Member selectnumber(Member m);

	int insertkid(KidMember km) throws JoinException;

	int kininsert(KinderGarden kg);

	int kinselect();

	int Kinclassinsert(KinGardenClass kc);

	ArrayList kinclassselect(KinGardenClass kc);

	int classinsert(ArrayList list);

	int selectkid(int select);

	int childrenCount(Member loginUser);

	int teacherCount(Member loginUser);


	ArrayList teacherMe(Member m, PageInfo pi2);

	int childrenCountN(Member loginUser);

	int teacherCountN(Member loginUser);

	ArrayList childrenMe(Member m, PageInfo pi2);

	ArrayList childrenMe2(Member m, PageInfo pi);

	ArrayList childrenMe3(Member m);

	ArrayList teacherMe2(Member m, PageInfo pi);

	Member teacherAt(Member m);

	int childrenMeCount(Member m);

	int childrenMeCount2(Member m);

	int teacherYn(Member loginUser);

	KinGardenClasses teacherKing(Member loginUser);

	int teacherMeCount(Member m);

	int teacherMe2Count(Member m);

	int insertAttachment(Attachment at);

	Member selectId(String phone);

	Member selectemailId(String email);

	Member findPwdId(String findId);

	int RePwd(Member mb);

	KidMember childrenMember(Member loginUser);

	int childrenYn(KidMember km);

	KinGardenClasses childrenKing(KidMember km);

	Attachment childrenAt(Member loginUser);

	int insertTeacherphoto(Attachment at);



}
