package edu.sms.entity;

public class StudentScore {

	private int ssId;// 唯一标识
	private String stuNo;// 学生学号
	private String stuName;// 学生姓名
	private String date;// 日期
	private String addorcut;// 加分扣分
	private String reason;// 加扣分原因
	private String studentScore;// 加扣分之后的总分
	private String term;// 学期
	private String subTime;//提交时间
	private String pfr;// 评分人
	


	public int getSsId() {
		return ssId;
	}

	public void setSsId(int ssId) {
		this.ssId = ssId;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getStuNo() {
		return stuNo;
	}

	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAddorcut() {
		return addorcut;
	}

	public void setAddorcut(String addorcut) {
		this.addorcut = addorcut;
	}

	public String getStudentScore() {
		return studentScore;
	}

	public void setStudentScore(String studentScore) {
		this.studentScore = studentScore;
	}

	public String getPfr() {
		return pfr;
	}

	public void setPfr(String pfr) {
		this.pfr = pfr;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public String getSubTime() {
		return subTime;
	}

	public void setSubTime(String subTime) {
		this.subTime = subTime;
	}

}
