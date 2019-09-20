package com.kh.fp.homework.model.vo;

public class Whoselect {
	
	private int boardNum;
	private int userNo;
	
	public Whoselect() {}
	
	public Whoselect(int boardNum, int userNo) {
		super();
		this.boardNum = boardNum;
		this.userNo = userNo;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "Whoselect [boardNum=" + boardNum + ", userNo=" + userNo + "]";
	}
	
	

}
