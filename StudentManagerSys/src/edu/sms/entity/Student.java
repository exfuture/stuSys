package edu.sms.entity;

public class Student {

	private String stuNo;// 学号
	private String stuName;// 姓名
	private String classNo;// 班级
	
	
	//用于显示
	private String lastTermRank;// 上学期排名
	private String lastTermScore;// 上学期分数
	private String studentScore;// 学生总分
	private String term;// 当前学期

	public String getStuNo() {
		return stuNo;
	}

	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getClassNo() {
		return classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}

	public String getStudentScore() {
		return studentScore;
	}

	public void setStudentScore(String studentScore) {
		this.studentScore = studentScore;
	}

	public String getLastTermRank() {
		return lastTermRank;
	}

	public void setLastTermRank(String lastTermRank) {
		this.lastTermRank = lastTermRank;
	}

	public String getLastTermScore() {
		return lastTermScore;
	}

	public void setLastTermScore(String lastTermScore) {
		this.lastTermScore = lastTermScore;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

}
