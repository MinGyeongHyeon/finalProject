package com.kh.fp.member.model.service;

import java.util.ArrayList;


import com.kh.fp.member.model.exception.JoinException;
import com.kh.fp.member.model.exception.LoginException;
import com.kh.fp.member.model.vo.KidMember;
import com.kh.fp.member.model.vo.KinGardenClass;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;

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


	ArrayList teacherMe(Member m);

	int childrenCountN(Member loginUser);

	int teacherCountN(Member loginUser);

	ArrayList childrenMe(Member m);

	ArrayList childrenMe2(Member m);

	ArrayList childrenMe3(Member m);



}
