package com.kh.fp.returnHome.model.vo;

public class ChildrenClass implements java.io.Serializable{
	private int classNo;
	private int kinderNo;
	private String className;
	private String openedDate;
	private String semester;
	private String division;
	private int teacherNo; //선생님 번호
	private int childrenNo; // 애기 번호
	private String childrenName;
	private String birth;
	private String gender;
	private int userNo; //학부모 번호
	
	public ChildrenClass() {}

	public ChildrenClass(int classNo, int kinderNo, String className, String openedDate, String semester,
			String division, int teacherNo, int childrenNo, String childrenName, String birth, String gender,
			int userNo) {
		super();
		this.classNo = classNo;
		this.kinderNo = kinderNo;
		this.className = className;
		this.openedDate = openedDate;
		this.semester = semester;
		this.division = division;
		this.teacherNo = teacherNo;
		this.childrenNo = childrenNo;
		this.childrenName = childrenName;
		this.birth = birth;
		this.gender = gender;
		this.userNo = userNo;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public int getKinderNo() {
		return kinderNo;
	}

	public void setKinderNo(int kinderNo) {
		this.kinderNo = kinderNo;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getOpenedDate() {
		return openedDate;
	}

	public void setOpenedDate(String openedDate) {
		this.openedDate = openedDate;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public int getTeacherNo() {
		return teacherNo;
	}

	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
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

	@Override
	public String toString() {
		return "ChildrenClass [classNo=" + classNo + ", kinderNo=" + kinderNo + ", className=" + className
				+ ", openedDate=" + openedDate + ", semester=" + semester + ", division=" + division + ", teacherNo="
				+ teacherNo + ", childrenNo=" + childrenNo + ", childrenName=" + childrenName + ", birth=" + birth
				+ ", gender=" + gender + ", userNo=" + userNo + "]";
	}
	
	
}

