package edu.sms.entity;

public class TeacherClass {

	private int tcId;// 唯一标识
	private String term;// 学期
	private String teacherNo;// 教师编号
	private String classNo;// 班级编号
	private String className;// 班级名称
	private String kcName;// 课程名称
	private String day;// 星期几
	private String jc;// 节次

	public int getTcId() {
		return tcId;
	}

	public void setTcId(int tcId) {
		this.tcId = tcId;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public String getTeacherNo() {
		return teacherNo;
	}

	public void setTeacherNo(String teacherNo) {
		this.teacherNo = teacherNo;
	}

	public String getClassNo() {
		return classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getKcName() {
		return kcName;
	}

	public void setKcName(String kcName) {
		this.kcName = kcName;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getJc() {
		return jc;
	}

	public void setJc(String jc) {
		this.jc = jc;
	}

}
