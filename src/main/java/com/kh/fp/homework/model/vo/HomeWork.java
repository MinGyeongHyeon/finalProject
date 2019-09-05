package com.kh.fp.homework.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class HomeWork implements Serializable{

	private int BoardNo;
	private String BoardTitle;
	private String BoardContent;
	private Date BoardDate;
	private String BoardType;
	private int CalssNo;
	private int ChildrenNo;
	private int KinderNo;
	private int IndividualNo;
	private int IndividualContent;
	public HomeWork() {}

	public HomeWork(int boardNo, String boardTitle, String boardContent, Date boardDate, String boardType, int calssNo,
			int childrenNo, int kinderNo, int individualNo, int individualContent) {
		super();
		BoardNo = boardNo;
		BoardTitle = boardTitle;
		BoardContent = boardContent;
		BoardDate = boardDate;
		BoardType = boardType;
		CalssNo = calssNo;
		ChildrenNo = childrenNo;
		KinderNo = kinderNo;
		IndividualNo = individualNo;
		IndividualContent = individualContent;
	}

	public int getBoardNo() {
		return BoardNo;
	}

	public void setBoardNo(int boardNo) {
		BoardNo = boardNo;
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

	public Date getBoardDate() {
		return BoardDate;
	}

	public void setBoardDate(Date boardDate) {
		BoardDate = boardDate;
	}

	public String getBoardType() {
		return BoardType;
	}

	public void setBoardType(String boardType) {
		BoardType = boardType;
	}

	public int getCalssNo() {
		return CalssNo;
	}

	public void setCalssNo(int calssNo) {
		CalssNo = calssNo;
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

	public int getIndividualContent() {
		return IndividualContent;
	}

	public void setIndividualContent(int individualContent) {
		IndividualContent = individualContent;
	}

	@Override
	public String toString() {
		return "HomeWork [BoardNo=" + BoardNo + ", BoardTitle=" + BoardTitle + ", BoardContent=" + BoardContent
				+ ", BoardDate=" + BoardDate + ", BoardType=" + BoardType + ", CalssNo=" + CalssNo + ", ChildrenNo="
				+ ChildrenNo + ", KinderNo=" + KinderNo + ", IndividualNo=" + IndividualNo + ", IndividualContent="
				+ IndividualContent + "]";
	}
	
	
	
	
}
