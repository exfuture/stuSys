package edu.sms.entity;

public class TeacherSignInDay {
	private int tsidId;// Ψһ��ʶ
	private String term;// ѧ��
	private String teacherNo;// ��ʦ���
	private String signTime;// ǩ��ʱ��
	private String signDay;// ��д����
	private String day;// ���ڼ�
	private String flag;// �Ƿ�ǩ��
	private String signIP;// ǩ��Ip

	private String teacherName;// ��ʦ����������ʾ

	public int getTsidId() {
		return tsidId;
	}

	public void setTsidId(int tsidId) {
		this.tsidId = tsidId;
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

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getSignIP() {
		return signIP;
	}

	public void setSignIP(String signIP) {
		this.signIP = signIP;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

}
