package com.kh.fp.album.model.vo;

import java.io.Serializable;
import java.sql.Date;


public class Album implements Serializable{

	private int alblumNo;
	private String albumTitle;
	private String albumContent;
	private Date writeDate;
	private int classNo;
	private int writer;
	private String tumbnail;
	private String childrenNum;
	private String childrenName;
	
	public Album() {}

	public Album(int alblumNo, String albumTitle, String albumContent, Date writeDate, int classNo, int writer,
			String tumbnail, String childrenNum, String childrenName) {
		super();
		this.alblumNo = alblumNo;
		this.albumTitle = albumTitle;
		this.albumContent = albumContent;
		this.writeDate = writeDate;
		this.classNo = classNo;
		this.writer = writer;
		this.tumbnail = tumbnail;
		this.childrenNum = childrenNum;
		this.childrenName = childrenName;
	}

	public int getAlblumNo() {
		return alblumNo;
	}

	public void setAlblumNo(int alblumNo) {
		this.alblumNo = alblumNo;
	}

	public String getAlbumTitle() {
		return albumTitle;
	}

	public void setAlbumTitle(String albumTitle) {
		this.albumTitle = albumTitle;
	}

	public String getAlbumContent() {
		return albumContent;
	}

	public void setAlbumContent(String albumContent) {
		this.albumContent = albumContent;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public int getWriter() {
		return writer;
	}

	public void setWriter(int writer) {
		this.writer = writer;
	}

	public String getTumbnail() {
		return tumbnail;
	}

	public void setTumbnail(String tumbnail) {
		this.tumbnail = tumbnail;
	}

	public String getChildrenNum() {
		return childrenNum;
	}

	public void setChildrenNum(String childrenNum) {
		this.childrenNum = childrenNum;
	}

	public String getChildrenName() {
		return childrenName;
	}

	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}

	@Override
	public String toString() {
		return "Album [alblumNo=" + alblumNo + ", albumTitle=" + albumTitle + ", albumContent=" + albumContent
				+ ", writeDate=" + writeDate + ", classNo=" + classNo + ", writer=" + writer + ", tumbnail=" + tumbnail
				+ ", childrenNum=" + childrenNum + ", childrenName=" + childrenName + "]";
	}

	
	
}
