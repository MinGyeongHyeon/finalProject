package com.kh.fp.notice.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Notice implements Serializable{
	
	private int boardNum;
	private String boardTitle;
	private String boardContent;
	private Date boardDate;
	private String boardtype;
	private int classNum;
	private int kinderNum;
	private int writer;
	private String className;
	private String picture;
	
	public Notice() {}


	public Notice(int boardNum, String boardTitle, String boardContent, Date boardDate, String boardtype, int classNum,

			int kinderNum, int writer, String className, String picture) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.boardtype = boardtype;
		this.classNum = classNum;
		this.kinderNum = kinderNum;
		this.writer = writer;
		this.className = className;

		this.picture = picture;
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


	public Date getBoardDate() {
		return boardDate;
	}


	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
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


	public int getKinderNum() {
		return kinderNum;
	}


	public void setKinderNum(int kinderNum) {
		this.kinderNum = kinderNum;
	}


	public int getWriter() {
		return writer;
	}


	public void setWriter(int writer) {
		this.writer = writer;
	}


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}


	public String getPicture() {
		return picture;
	}


	public void setPicture(String picture) {
		this.picture = picture;

	}


	@Override
	public String toString() {
		return "Notice [boardNum=" + boardNum + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardDate=" + boardDate + ", boardtype=" + boardtype + ", classNum=" + classNum + ", kinderNum="
				+ kinderNum + ", writer=" + writer + ", className=" + className + ", picture=" + picture + "]";
	}


	

}