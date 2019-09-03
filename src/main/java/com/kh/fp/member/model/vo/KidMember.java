package com.kh.fp.member.model.vo;

public class KidMember {
	
	private int childrenNo;
	private String childrenName;
	private String birth;
	private String gender;
	private int userNo;
	private String birth1;
	private String birth2;
	private String birth3;
	
	
	public KidMember() {}


	public KidMember(int childrenNo, String childrenName, String birth, String gender, int userNo, String birth1,
			String birth2, String birth3) {
		super();
		this.childrenNo = childrenNo;
		this.childrenName = childrenName;
		this.birth = birth;
		this.gender = gender;
		this.userNo = userNo;
		this.birth1 = birth1;
		this.birth2 = birth2;
		this.birth3 = birth3;
	}


	public int getChildrenNo() {
		return childrenNo;
	}


	public void setChildrenNo(int childrenNo) {
		this.childrenNo = childrenNo;
	}


	public String getChildrenName() {
		return childrenName;
	}


	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getBirth1() {
		return birth1;
	}


	public void setBirth1(String birth1) {
		this.birth1 = birth1;
	}


	public String getBirth2() {
		return birth2;
	}


	public void setBirth2(String birth2) {
		this.birth2 = birth2;
	}


	public String getBirth3() {
		return birth3;
	}


	public void setBirth3(String birth3) {
		this.birth3 = birth3;
	}


	@Override
	public String toString() {
		return "KidMember [childrenNo=" + childrenNo + ", childrenName=" + childrenName + ", birth=" + birth
				+ ", gender=" + gender + ", userNo=" + userNo + ", birth1=" + birth1 + ", birth2=" + birth2
				+ ", birth3=" + birth3 + "]";
	}
	
	
	

}
