package com.kh.fp.member.model.dao;

import java.util.ArrayList;


import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fp.member.model.exception.JoinException;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.member.model.vo.KidMember;
import com.kh.fp.member.model.vo.KinGardenClass;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.member.model.vo.OnOff;
import com.kh.fp.note.model.vo.PageInfo;

public interface MemberDao {

	String selectMemberPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);

	int insertUser(SqlSessionTemplate sqlSession, Member m) throws JoinException;


	Member idcheck(SqlSessionTemplate sqlSession, Member m);

	Member selectnumber(SqlSessionTemplate sqlSession, Member m);

	int insertKid(SqlSessionTemplate sqlSession, KidMember km);

	int kininsert(SqlSessionTemplate sqlSession, KinderGarden kg);

	int kinselect(SqlSessionTemplate sqlSession);


	int kinclassinsert(SqlSessionTemplate sqlSession, KinGardenClass kc);

	ArrayList kinclassselect(SqlSessionTemplate sqlSession, KinGardenClass kc);

	//int classinsert(SqlSessionTemplate sqlSession, ArrayList list);

	int selectkid(SqlSessionTemplate sqlSession, int select);

	int childrenCount(SqlSessionTemplate sqlSession, Member loginUser);

	int teacherCount(SqlSessionTemplate sqlSession, Member loginUser);


	ArrayList teacherMe(SqlSessionTemplate sqlSession, Member m, PageInfo pi2);

	int childrenCountN(SqlSessionTemplate sqlSession, Member loginUser);

	int teacherCountN(SqlSessionTemplate sqlSession, Member loginUser);

	ArrayList childrenMe(SqlSessionTemplate sqlSession, Member m, PageInfo pi2);

	ArrayList childrenMe2(SqlSessionTemplate sqlSession, Member m, PageInfo pi);

	ArrayList childrenMe3(SqlSessionTemplate sqlSession, Member m);

	ArrayList teacherMe2(SqlSessionTemplate sqlSession, Member m, PageInfo pi);

	Member teacherAt(SqlSessionTemplate sqlSession, Member m);

	int childrenMeCount(SqlSessionTemplate sqlSession, Member m);

	int childrenMeCount2(SqlSessionTemplate sqlSession, Member m);

	int teacherYn(SqlSessionTemplate sqlSession, Member loginUser);

	KinGardenClasses teacherKing(SqlSessionTemplate sqlSession, Member loginUser);

	int teacherMeCount(SqlSessionTemplate sqlSession, Member m);

	int teacherMe2Count(SqlSessionTemplate sqlSession, Member m);

	int insertAttachment(SqlSessionTemplate sqlSession, Attachment at);

	Member selectId(SqlSessionTemplate sqlSession, String phone);

	Member selectemailId(SqlSessionTemplate sqlSession, String email);

	Member findPwdId(SqlSessionTemplate sqlSession, String findId);

	int RePwd(SqlSessionTemplate sqlSession, Member mb);


	KidMember childrenMember(SqlSessionTemplate sqlSession, Member loginUser);

	int childrenYn(SqlSessionTemplate sqlSession, KidMember km);

	KinGardenClasses childrenKing(SqlSessionTemplate sqlSession, KidMember km);

	Attachment childrenAt(SqlSessionTemplate sqlSession, Member loginUser);

	int insertTeacherphoto(SqlSessionTemplate sqlSession, Attachment at);

	int classonoff(SqlSessionTemplate sqlSession, KinderGarden kg);

	OnOff selectOnOff(SqlSessionTemplate sqlSession, Member loginUser);

	KinderGarden selectKinderName(SqlSessionTemplate sqlSession, int userNo);

	String selectUsingDate(SqlSessionTemplate sqlSession, int userNo);

	int childrenYYn(SqlSessionTemplate sqlSession, KidMember km);

	int teacherYYn(SqlSessionTemplate sqlSession, Member loginUser);

	int myimgchange(SqlSessionTemplate sqlSession, Attachment at);

	



}
