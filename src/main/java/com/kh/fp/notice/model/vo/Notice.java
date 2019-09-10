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
	
	
	public Notice() {}


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


	@Override
	public String toString() {
		return "Notice [boardNum=" + boardNum + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardDate=" + boardDate + ", boardtype=" + boardtype + ", classNum=" + classNum + ", kinderNum="
				+ kinderNum + "]";
	}

	
}