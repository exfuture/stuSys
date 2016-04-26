package edu.sms.entity;

public class TeacherSignIn {
	private int tsiId;// 唯一标识
	private String term;// 学期
	private String teacherNo;// 教师编号
	private String signTime;// 签到时间
	private String signDay;// 填写日期
	private String day;// 星期几
	private String jc;// 节次
	private String flag;// 是否签到
	private String signKc;//签到课程
	private String className;//签到班级
	public int getTsiId() {
		return tsiId;
	}

	public void setTsiId(int tsiId) {
		this.tsiId = tsiId;
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

	public String getSignTime() {
		return signTime;
	}

	public void setSignTime(String signTime) {
		this.signTime = signTime;
	}



	public String getSignDay() {
		return signDay;
	}

	public void setSignDay(String signDay) {
		this.signDay = signDay;
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

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getSignKc() {
		return signKc;
	}

	public void setSignKc(String signKc) {
		this.signKc = signKc;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

}
