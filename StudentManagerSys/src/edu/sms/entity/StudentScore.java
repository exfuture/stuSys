package edu.sms.entity;

public class StudentScore {

	private int ssId;// Ψһ��ʶ
	private String stuNo;// ѧ��ѧ��
	private String stuName;// ѧ������
	private String date;// ����
	private String addorcut;// �ӷֿ۷�
	private String reason;// �ӿ۷�ԭ��
	private String studentScore;// �ӿ۷�֮����ܷ�
	private String term;// ѧ��
	private String subTime;//�ύʱ��
	private String pfr;// ������
	


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
