package com.kh.fp.homework.model.vo;

import java.io.Serializable;

public class IndividualHomework implements Serializable{
	
	private int boardNum;
	private String boardContent;
	private int childrenNo;
	private int inboardNum;
	
	
	public IndividualHomework() {}
	
	public IndividualHomework(int boardNum, String boardContent, int childrenNo, int inboardNum) {
		super();
		this.boardNum = boardNum;
		this.boardContent = boardContent;
		this.childrenNo = childrenNo;
		this.inboardNum = inboardNum;
	}

	public IndividualHomework(String boardContent, int childrenNo) {
		super();
		this.boardContent = boardContent;
		this.childrenNo = childrenNo;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public int getChildrenNo() {
		return childrenNo;
	}

	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}

	public int getInboardNum() {
		return inboardNum;
	}

	public void setInboardNum(int inboardNum) {
		this.inboardNum = inboardNum;
	}

	@Override
	public String toString() {
		return "IndividualHomework [boardNum=" + boardNum + ", boardContent=" + boardContent + ", childrenNo="
				+ childrenNo + ", inboardNum=" + inboardNum + "]";
	}
	
	
	
}
