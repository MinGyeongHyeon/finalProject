package com.kh.fp.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fp.member.model.exception.JoinException;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.member.model.vo.KidMember;
import com.kh.fp.member.model.vo.KinGardenClass;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.KinderGarden;
import com.kh.fp.member.model.vo.Member;
import com.kh.fp.member.model.vo.OnOff;
import com.kh.fp.note.model.vo.PageInfo;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Override
	public String selectMemberPassword(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.selectPassword", m);
	}


	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, Member m) {

		
		return sqlSession.selectOne("Member.selectLoginUser",m);
	}


	@Override
	public int insertUser(SqlSessionTemplate sqlSession, Member m) throws JoinException {
		
		int result = 0;
		
		System.out.println(m);
		
		if(m.getUserId() != "" || m.getUserName() != "") {
			
			result = sqlSession.insert("Member.insertMember",m);
			
		}else {
			
			throw new JoinException("회원가입에 실패 하셨습니다. 다시 시도해주세요!");
		}
		
		return result;

	}


	@Override
	public Member idcheck(SqlSessionTemplate sqlSession, Member m) {
		

		return sqlSession.selectOne("Member.idcheck",m);
		
	}


	@Override
	public Member selectnumber(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("Member.selectNumber" , m);
	}


	@Override
	public int insertKid(SqlSessionTemplate sqlSession, KidMember km) {
		


		return sqlSession.insert("Member.insertKid", km);
	}


	@Override
	public int kininsert(SqlSessionTemplate sqlSession, KinderGarden kg) {

		
		return sqlSession.insert("Member.kininsert", kg);
	}


	@Override
	public int kinselect(SqlSessionTemplate sqlSession) {

		
		return sqlSession.selectOne("Member.kinselect");
	}



	@Override
	public int kinclassinsert(SqlSessionTemplate sqlSession, KinGardenClass kc) {

			int result = 0;
		
		for(int i = 0 ; i < kc.getClassName().length; i++) {
			
			kc.setNameCount(kc.getClassName()[i]);
			
			sqlSession.insert("Member.kinclassinsert" , kc );
			
		}
		return 0;
	}


	@Override
	public ArrayList kinclassselect(SqlSessionTemplate sqlSession, KinGardenClass kc) {
		
		ArrayList list = (ArrayList) sqlSession.selectList("Member.kinclassselect", kc);

		
		return list;
	}


	/*
	 * @Override public int classinsert(SqlSessionTemplate sqlSession, ArrayList
	 * list) {
	 * 
	 * for(int i = 0 ; i < list.size(); i++) {
	 * 
	 * int result = sqlSession.insert("Member.classinsert",list.get(i));
	 * 
	 * }
	 * 
	 * 
	 * return 0; }
	 */


	@Override
	public int selectkid(SqlSessionTemplate sqlSession, int select) {

		return sqlSession.selectOne("Member.selectkkid", select);
	}


	@Override
	public int childrenCount(SqlSessionTemplate sqlSession, Member loginUser) {

		return sqlSession.selectOne("Member.childrenCount",loginUser);
	}


	@Override
	public int teacherCount(SqlSessionTemplate sqlSession, Member loginUser) {

		return sqlSession.selectOne("Member.teacherCount" , loginUser);
	}



	@Override
	public ArrayList teacherMe(SqlSessionTemplate sqlSession,Member m,PageInfo pi2) {
			
			ArrayList list = null;
			
			int offset = (pi2.getCurrentPage() -1 ) * pi2.getLimit();
			
			RowBounds rowBounds = new RowBounds(offset, pi2.getLimit());
		
			 list = (ArrayList) sqlSession.selectList("Member.teacherMe", m, rowBounds);
		
		return list;
	}


	@Override
	public int childrenCountN(SqlSessionTemplate sqlSession, Member loginUser) {

		return sqlSession.selectOne("Member.childrenCountN" , loginUser);
	}


	@Override
	public int teacherCountN(SqlSessionTemplate sqlSession, Member loginUser) {

		return sqlSession.selectOne("Member.teacherCountN", loginUser);
	}


	@Override
	public ArrayList childrenMe(SqlSessionTemplate sqlSession, Member m , PageInfo pi2) {
		
		ArrayList list = null;
		
		int offset = (pi2.getCurrentPage() -1 ) * pi2.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi2.getLimit());
		
		list = (ArrayList) sqlSession.selectList("Member.childrenMe", m , rowBounds);

		return list;
	}


	@Override
	public ArrayList childrenMe2(SqlSessionTemplate sqlSession, Member m , PageInfo pi) {
	
		ArrayList list = null;
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		list = (ArrayList) sqlSession.selectList("Member.childrenMe2" , m , rowBounds);
		
		System.out.println("list 의 값 : " + list);
		
		return list;
	}


	@Override
	public ArrayList childrenMe3(SqlSessionTemplate sqlSession, Member m) {

		return (ArrayList) sqlSession.selectList("Member.childrenMe3",m);
	}


	@Override
	public ArrayList teacherMe2(SqlSessionTemplate sqlSession, Member m, PageInfo pi) {
		
		ArrayList list = null;
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList) sqlSession.selectList("Member.teacherMe2",m,rowBounds);

		

		return list;
	}


	@Override
	public Member teacherAt(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("Member.teacherAt",m);
	}


	@Override
	public int childrenMeCount(SqlSessionTemplate sqlSession , Member m) {

		return sqlSession.selectOne("Member.childrenMeCount",m);
	}


	@Override
	public int childrenMeCount2(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("Member.childrenMeCount2", m);
	}


	@Override
	public int teacherYn(SqlSessionTemplate sqlSession, Member loginUser) {

		return sqlSession.selectOne("Member.teachetYn" , loginUser);
	}


	@Override
	public KinGardenClasses teacherKing(SqlSessionTemplate sqlSession, Member loginUser) {

		return sqlSession.selectOne("Member.teacherKing", loginUser);
	}


	@Override
	public int teacherMeCount(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("Member.teacherMeCount",m);
	}


	@Override
	public int teacherMe2Count(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("Member.teacherMeCount2",m);
	}


	@Override
	public int insertAttachment(SqlSessionTemplate sqlSession, Attachment at) {

		return sqlSession.insert("Member.insertAttachment", at);
	}


	@Override
	public Member selectId(SqlSessionTemplate sqlSession, String phone) {

		return sqlSession.selectOne("Member.selectId",phone);
	}


	@Override
	public Member selectemailId(SqlSessionTemplate sqlSession, String email) {

		return sqlSession.selectOne("Member.selecteamilId",email);
	}


	@Override
	public Member findPwdId(SqlSessionTemplate sqlSession, String findId) {

		return sqlSession.selectOne("Member.findPwdId",findId);
	}


	@Override
	public int RePwd(SqlSessionTemplate sqlSession, Member mb) {

		return sqlSession.update("Member.RePwd",mb);
	}


	@Override
	public KidMember childrenMember(SqlSessionTemplate sqlSession, Member loginUser) {

		return sqlSession.selectOne("Member.childrenMember", loginUser);
	}


	@Override
	public int childrenYn(SqlSessionTemplate sqlSession, KidMember km) {

		return sqlSession.selectOne("Member.childrenYn",km);
	}


	@Override
	public KinGardenClasses childrenKing(SqlSessionTemplate sqlSession, KidMember km) {

		return sqlSession.selectOne("Member.childrenKing",km);
	}


	@Override
	public Attachment childrenAt(SqlSessionTemplate sqlSession, Member loginUser) {

		return sqlSession.selectOne("Member.childrenAt",loginUser);
	}


	@Override
	public int insertTeacherphoto(SqlSessionTemplate sqlSession, Attachment at) {

		return sqlSession.insert("Member.insetTeacherphoto",at);
	}


	@Override
	public int classonoff(SqlSessionTemplate sqlSession, KinderGarden kg) {

		return sqlSession.insert("Member.classonoff",kg);
	}


	@Override
	public OnOff selectOnOff(SqlSessionTemplate sqlSession, Member loginUser) {
		

		return sqlSession.selectOne("Member.selectOnOff",loginUser);
	}


	@Override
	public KinderGarden selectKinderName(SqlSessionTemplate sqlSession, int userNo) {

		return sqlSession.selectOne("Member.selectKinderName",userNo);
	}


	@Override
	public String selectUsingDate(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("Member.selectUsingDate", userNo);
	}


	@Override
	public int childrenYYn(SqlSessionTemplate sqlSession, KidMember km) {

		return sqlSession.selectOne("Member.childrenYYn",km);
	}





	

	


	
}
