package com.kh.fp.note.model.vo;

import java.sql.Date;

public class NoteBox implements java.io.Serializable{
	private int noteNo;
	private String noteTitle;
	private String noteContent;
	private Date noteDate;
	private int receiveNo;
	private int sendNo;
	private String status;
	private String checked;

	public NoteBox() {}

	public NoteBox(int noteNo, String noteTitle, String noteContent, Date noteDate, int receiveNo, int sendNo,
			String status, String checked) {
		super();
		this.noteNo = noteNo;
		this.noteTitle = noteTitle;
		this.noteContent = noteContent;
		this.noteDate = noteDate;
		this.receiveNo = receiveNo;
		this.sendNo = sendNo;
		this.status = status;
		this.checked = checked;
	}

	public int getNoteNo() {
		return noteNo;
	}

	public void setNoteNo(int noteNo) {
		this.noteNo = noteNo;
	}

	public String getNoteTitle() {
		return noteTitle;
	}

	public void setNoteTitle(String noteTitle) {
		this.noteTitle = noteTitle;
	}

	public String getNoteContent() {
		return noteContent;
	}

	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}

	public Date getNoteDate() {
		return noteDate;
	}

	public void setNoteDate(Date noteDate) {
		this.noteDate = noteDate;
	}

	public int getReceiveNo() {
		return receiveNo;
	}

	public void setReceiveNo(int receiveNo) {
		this.receiveNo = receiveNo;
	}

	public int getSendNo() {
		return sendNo;
	}

	public void setSendNo(int sendNo) {
		this.sendNo = sendNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getChecked() {
		return checked;
	}

	public void setChecked(String checked) {
		this.checked = checked;
	}

	@Override
	public String toString() {
		return "NoteBox [noteNo=" + noteNo + ", noteTitle=" + noteTitle + ", noteContent=" + noteContent + ", noteDate="
				+ noteDate + ", receiveNo=" + receiveNo + ", sendNo=" + sendNo + ", status=" + status + ", checked="
				+ checked + "]";
	}


}
