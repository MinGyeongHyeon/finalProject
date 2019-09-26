package com.kh.fp.homework.model.vo;

public class HomeWorkApply {
	
	private int commentNo;
	private String commentContent;
	private String commtentName;
	
	public HomeWorkApply() {}
	
	public HomeWorkApply(int commentNo, String commentContent, String commtentName) {
		super();
		this.commentNo = commentNo;
		this.commentContent = commentContent;
		this.commtentName = commtentName;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommtentName() {
		return commtentName;
	}

	public void setCommtentName(String commtentName) {
		this.commtentName = commtentName;
	}

	@Override
	public String toString() {
		return "HomeWorkApply [commentNo=" + commentNo + ", commentContent=" + commentContent + ", commtentName="
				+ commtentName + "]";
	}
	
	
	
	
}
