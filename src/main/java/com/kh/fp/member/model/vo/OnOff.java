package com.kh.fp.member.model.vo;

public class OnOff {
	
	private int kinderNo;
	private String announcement;
	private String meal;
	private String dosage;
	private String homecoming;
	private String boardNotice;
	private String album;
	private String schedule;
	private String attendance;
	private String chatting;
	private String mypage;
	private String inOut;
	
	public OnOff() {}

	public OnOff(int kinderNo, String announcement, String meal, String dosage, String homecoming, String boardNotice,
			String album, String schedule, String attendance, String chatting, String mypage, String inOut) {
		super();
		this.kinderNo = kinderNo;
		this.announcement = announcement;
		this.meal = meal;
		this.dosage = dosage;
		this.homecoming = homecoming;
		this.boardNotice = boardNotice;
		this.album = album;
		this.schedule = schedule;
		this.attendance = attendance;
		this.chatting = chatting;
		this.mypage = mypage;
		this.inOut = inOut;
	}

	public int getKinderNo() {
		return kinderNo;
	}

	public void setKinderNo(int kinderNo) {
		this.kinderNo = kinderNo;
	}

	public String getAnnouncement() {
		return announcement;
	}

	public void setAnnouncement(String announcement) {
		this.announcement = announcement;
	}

	public String getMeal() {
		return meal;
	}

	public void setMeal(String meal) {
		this.meal = meal;
	}

	public String getDosage() {
		return dosage;
	}

	public void setDosage(String dosage) {
		this.dosage = dosage;
	}

	public String getHomecoming() {
		return homecoming;
	}

	public void setHomecoming(String homecoming) {
		this.homecoming = homecoming;
	}

	public String getBoardNotice() {
		return boardNotice;
	}

	public void setBoardNotice(String boardNotice) {
		this.boardNotice = boardNotice;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getAttendance() {
		return attendance;
	}

	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}

	public String getChatting() {
		return chatting;
	}

	public void setChatting(String chatting) {
		this.chatting = chatting;
	}

	public String getMypage() {
		return mypage;
	}

	public void setMypage(String mypage) {
		this.mypage = mypage;
	}

	public String getInOut() {
		return inOut;
	}

	public void setInOut(String inOut) {
		this.inOut = inOut;
	}

	@Override
	public String toString() {
		return "OnOff [kinderNo=" + kinderNo + ", announcement=" + announcement + ", meal=" + meal + ", dosage="
				+ dosage + ", homecoming=" + homecoming + ", boardNotice=" + boardNotice + ", album=" + album
				+ ", schedule=" + schedule + ", attendance=" + attendance + ", chatting=" + chatting + ", mypage="
				+ mypage + ", inOut=" + inOut + "]";
	}

	
	
	

}
