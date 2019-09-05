package com.kh.fp.homework.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class homework implements Serializable{
	
	private int BoardNum;
	private String BoardTitle;
	private String BoardContent;
	private Date WriteDate;
	private String Boardtype;
	private int ClassNum;
	private int ChildrenNo;
	private int KinderNo;
	private int IndividualNo;
	private String IndividualContent;
	
	public homework() {}

	public homework(int boardNum, String boardTitle, String boardContent, Date writeDate, String boardtype,
			int classNum, int childrenNo, int kinderNo, int individualNo, String individualContent) {
		super();
		BoardNum = boardNum;
		BoardTitle = boardTitle;
		BoardContent = boardContent;
		WriteDate = writeDate;
		Boardtype = boardtype;
		ClassNum = classNum;
		ChildrenNo = childrenNo;
		KinderNo = kinderNo;
		IndividualNo = individualNo;
		IndividualContent = individualContent;
	}

	public int getBoardNum() {
		return BoardNum;
	}

	public void setBoardNum(int boardNum) {
		BoardNum = boardNum;
	}

	public String getBoardTitle() {
		return BoardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		BoardTitle = boardTitle;
	}

	public String getBoardContent() {
		return BoardContent;
	}

	public void setBoardContent(String boardContent) {
		BoardContent = boardContent;
	}

	public Date getWriteDate() {
		return WriteDate;
	}

	public void setWriteDate(Date writeDate) {
		WriteDate = writeDate;
	}

	public String getBoardtype() {
		return Boardtype;
	}

	public void setBoardtype(String boardtype) {
		Boardtype = boardtype;
	}

	public int getClassNum() {
		return ClassNum;
	}

	public void setClassNum(int classNum) {
		ClassNum = classNum;
	}

	public int getChildrenNo() {
		return ChildrenNo;
	}

	public void setChildrenNo(int childrenNo) {
		ChildrenNo = childrenNo;
	}

	public int getKinderNo() {
		return KinderNo;
	}

	public void setKinderNo(int kinderNo) {
		KinderNo = kinderNo;
	}

	public int getIndividualNo() {
		return IndividualNo;
	}

	public void setIndividualNo(int individualNo) {
		IndividualNo = individualNo;
	}

	public String getIndividualContent() {
		return IndividualContent;
	}

	public void setIndividualContent(String individualContent) {
		IndividualContent = individualContent;
	}

	@Override
	public String toString() {
		return "homework [BoardNum=" + BoardNum + ", BoardTitle=" + BoardTitle + ", BoardContent=" + BoardContent
				+ ", WriteDate=" + WriteDate + ", Boardtype=" + Boardtype + ", ClassNum=" + ClassNum + ", ChildrenNo="
				+ ChildrenNo + ", KinderNo=" + KinderNo + ", IndividualNo=" + IndividualNo + ", IndividualContent="
				+ IndividualContent + "]";
	}
	
	

}
