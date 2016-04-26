package edu.sms.entity;

import java.io.Serializable;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

public class StudentSituation implements Serializable {

	private String stuNo;// 学号
	private String classNo;// 班级
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

	public boolean equals(Object obj) {

		if (!(obj instanceof StudentSituation)) {
			return false;
		}
		StudentSituation studentSituation = (StudentSituation) obj;
		return new EqualsBuilder().appendSuper(super.equals(obj)).append(
				this.stuNo, studentSituation.stuNo).append(this.term,
				studentSituation.term).isEquals();

	}

	public int hasCode() {

		return new HashCodeBuilder(-528253723, -475504089).appendSuper(
				super.hashCode()).append(this.stuNo).append(this.term)
				.toHashCode();

	}
}
