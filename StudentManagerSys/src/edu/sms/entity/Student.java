package edu.sms.entity;

public class Student {

	private String stuNo;// ѧ��
	private String stuName;// ����
	private String classNo;// �༶
	
	
	//������ʾ
	private String lastTermRank;// ��ѧ������
	private String lastTermScore;// ��ѧ�ڷ���
	private String studentScore;// ѧ���ܷ�
	private String term;// ��ǰѧ��

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
