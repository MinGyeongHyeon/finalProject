package com.kh.fp.member.model.vo;

import java.sql.Date;

public class Attachment {
	
	private int fileId;
	private String origineName;
	private String changeName;
	private String filePath;
	private Date updateDate;
	private String attachType;
	private String fileLevel;
	private int boardNo;
	private int albumNo;
	private int ntboardNo;
	private int mealNo;
	private int dosageNo;
	private int homeNo;
	private int childrenNo;
	private int userNo;

	
	public Attachment() {}


	public Attachment(int fileId, String origineName, String changeName, String filePath, Date updateDate,
			String attachType, String fileLevel, int boardNo, int albumNo, int ntboardNo, int mealNo, int dosageNo,
			int homeNo, int childrenNo, int userNo) {
		super();
		this.fileId = fileId;
		this.origineName = origineName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.updateDate = updateDate;
		this.attachType = attachType;
		this.fileLevel = fileLevel;
		this.boardNo = boardNo;
		this.albumNo = albumNo;
		this.ntboardNo = ntboardNo;
		this.mealNo = mealNo;
		this.dosageNo = dosageNo;
		this.homeNo = homeNo;
		this.childrenNo = childrenNo;
		this.userNo = userNo;
	}


	public int getFileId() {
		return fileId;
	}


	public void setFileId(int fileId) {
		this.fileId = fileId;
	}


	public String getOrigineName() {
		return origineName;
	}


	public void setOrigineName(String origineName) {
		this.origineName = origineName;
	}


	public String getChangeName() {
		return changeName;
	}


	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}


	public String getFilePath() {
		return filePath;
	}


	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}


	public Date getUpdateDate() {
		return updateDate;
	}


	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}


	public String getAttachType() {
		return attachType;
	}


	public void setAttachType(String attachType) {
		this.attachType = attachType;
	}


	public String getFileLevel() {
		return fileLevel;
	}


	public void setFileLevel(String fileLevel) {
		this.fileLevel = fileLevel;
	}


	public int getBoardNo() {
		return boardNo;
	}


	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}


	public int getAlbumNo() {
		return albumNo;
	}


	public void setAlbumNo(int albumNo) {
		this.albumNo = albumNo;
	}


	public int getNtboardNo() {
		return ntboardNo;
	}


	public void setNtboardNo(int ntboardNo) {
		this.ntboardNo = ntboardNo;
	}


	public int getMealNo() {
		return mealNo;
	}


	public void setMealNo(int mealNo) {
		this.mealNo = mealNo;
	}


	public int getDosageNo() {
		return dosageNo;
	}


	public void setDosageNo(int dosageNo) {
		this.dosageNo = dosageNo;
	}


	public int getHomeNo() {
		return homeNo;
	}


	public void setHomeNo(int homeNo) {
		this.homeNo = homeNo;
	}


	public int getChildrenNo() {
		return childrenNo;
	}


	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	@Override
	public String toString() {
		return "Attachment [fileId=" + fileId + ", origineName=" + origineName + ", changeName=" + changeName
				+ ", filePath=" + filePath + ", updateDate=" + updateDate + ", attachType=" + attachType
				+ ", fileLevel=" + fileLevel + ", boardNo=" + boardNo + ", albumNo=" + albumNo + ", ntboardNo="
				+ ntboardNo + ", mealNo=" + mealNo + ", dosageNo=" + dosageNo + ", homeNo=" + homeNo + ", childrenNo="
				+ childrenNo + ", userNo=" + userNo + "]";
	}


	
	
	
	
}
