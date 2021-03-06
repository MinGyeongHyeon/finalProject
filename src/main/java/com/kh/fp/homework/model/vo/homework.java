package com.kh.fp.homework.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class homework implements Serializable{
	
	private int boardNum;
	private String boardTitle;
	private String boardContent;
	private Date writeDate;
	private String boardtype;
	private int classNum;
	private int childrenNo;
	private int kinderNo;
	private int individualNo;
	private String individualContent;
	private int writer;
	private int inboardNum;
	private String inboardContent;
	private String className;
	private String attachName;
	private int nowSession;
	
	
	public homework() {}


	public homework(int boardNum, String boardTitle, String boardContent, Date writeDate, String boardtype,
			int classNum, int childrenNo, int kinderNo, int individualNo, String individualContent, int writer,
			int inboardNum, String inboardContent, String className, String attachName, int nowSession) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.writeDate = writeDate;
		this.boardtype = boardtype;
		this.classNum = classNum;
		this.childrenNo = childrenNo;
		this.kinderNo = kinderNo;
		this.individualNo = individualNo;
		this.individualContent = individualContent;
		this.writer = writer;
		this.inboardNum = inboardNum;
		this.inboardContent = inboardContent;
		this.className = className;
		this.attachName = attachName;
		this.nowSession = nowSession;
	}


	public int getBoardNum() {
		return boardNum;
	}


	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}


	public String getBoardTitle() {
		return boardTitle;
	}


	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}


	public String getBoardContent() {
		return boardContent;
	}


	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}


	public Date getWriteDate() {
		return writeDate;
	}


	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}


	public String getBoardtype() {
		return boardtype;
	}


	public void setBoardtype(String boardtype) {
		this.boardtype = boardtype;
	}


	public int getClassNum() {
		return classNum;
	}


	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}


	public int getChildrenNo() {
		return childrenNo;
	}


	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}


	public int getKinderNo() {
		return kinderNo;
	}


	public void setKinderNo(int kinderNo) {
		this.kinderNo = kinderNo;
	}


	public int getIndividualNo() {
		return individualNo;
	}


	public void setIndividualNo(int individualNo) {
		this.individualNo = individualNo;
	}


	public String getIndividualContent() {
		return individualContent;
	}


	public void setIndividualContent(String individualContent) {
		this.individualContent = individualContent;
	}


	public int getWriter() {
		return writer;
	}


	public void setWriter(int writer) {
		this.writer = writer;
	}


	public int getInboardNum() {
		return inboardNum;
	}


	public void setInboardNum(int inboardNum) {
		this.inboardNum = inboardNum;
	}


	public String getInboardContent() {
		return inboardContent;
	}


	public void setInboardContent(String inboardContent) {
		this.inboardContent = inboardContent;
	}


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}


	public String getAttachName() {
		return attachName;
	}


	public void setAttachName(String attachName) {
		this.attachName = attachName;
	}


	public int getNowSession() {
		return nowSession;
	}


	public void setNowSession(int nowSession) {
		this.nowSession = nowSession;
	}


	@Override
	public String toString() {
		return "homework [boardNum=" + boardNum + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", writeDate=" + writeDate + ", boardtype=" + boardtype + ", classNum=" + classNum + ", childrenNo="
				+ childrenNo + ", kinderNo=" + kinderNo + ", individualNo=" + individualNo + ", individualContent="
				+ individualContent + ", writer=" + writer + ", inboardNum=" + inboardNum + ", inboardContent="
				+ inboardContent + ", className=" + className + ", attachName=" + attachName + ", nowSession="
				+ nowSession + "]";
	}



	

}