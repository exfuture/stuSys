package edu.sms.entity;

public class TeacherSignInDay {
	private int tsidId;// 唯一标识
	private String term;// 学期
	private String teacherNo;// 教师编号
	private String signTime;// 签到时间
	private String signDay;// 填写日期
	private String day;// 星期几
	private String flag;// 是否签到
	private String signIP;// 签到Ip

	private String teacherName;// 教师名字用于显示

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
