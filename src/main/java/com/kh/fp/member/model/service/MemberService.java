package com.kh.fp.member.model.service;

import com.kh.fp.member.model.exception.LoginException;
import com.kh.fp.member.model.vo.KidMember;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;

public interface MemberService {

	Member login(Member m) throws LoginException;

	int insertUser(Member m);

	Member idcheck(Member m);

	Member selectnumber(Member m);

	int insertkid(KidMember km);

	int kininsert(KinderGarden kg);



}
