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
	private String SelectClass;
	
	public Notice() {}

	public Notice(int boardNum, String boardTitle, String boardContent, Date boardDate, String boardtype, int classNum,
			int kinderNum, String selectClass) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.boardtype = boardtype;
		this.classNum = classNum;
		this.kinderNum = kinderNum;
		this.SelectClass = selectClass;
	}
	
	

	public Notice(int boardNum, String boardTitle, String boardContent, Date boardDate, String boardtype) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.boardtype = boardtype;
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

	public String getSelectClass() {
		return SelectClass;
	}

	public void setSelectClass(String selectClass) {
		this.SelectClass = selectClass;
	}

	@Override
	public String toString() {
		return "Notice [boardNum=" + boardNum + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardDate=" + boardDate + ", boardtype=" + boardtype + ", classNum=" + classNum + ", kinderNum="
				+ kinderNum + ", SelectClass=" + SelectClass + "]";
	}
	
	

}