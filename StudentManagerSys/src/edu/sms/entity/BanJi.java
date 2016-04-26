package edu.sms.entity;

public class BanJi {

	private int bjId;// 唯一标识
	private String bjNo;//编辑编码 
	private String bjName;// 班级名称
	private String xiId;// 所属系

	private String bjRs;// 班级人数
	private String bzr;// 班主任

	public int getBjId() {
		return bjId;
	}

	public void setBjId(int bjId) {
		this.bjId = bjId;
	}

	public String getBjName() {
		return bjName;
	}

	public void setBjName(String bjName) {
		this.bjName = bjName;
	}

	public String getXiId() {
		return xiId;
	}

	public void setXiId(String xiId) {
		this.xiId = xiId;
	}

	public String getBjRs() {
		return bjRs;
	}

	public void setBjRs(String bjRs) {
		this.bjRs = bjRs;
	}

	public String getBzr() {
		return bzr;
	}

	public void setBzr(String bzr) {
		this.bzr = bzr;
	}

}
