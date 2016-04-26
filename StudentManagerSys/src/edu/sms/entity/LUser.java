package edu.sms.entity;

public class LUser {

	private String	ID;
	private	String  USERNO;
	private String	PASSWORD;
	private String	TEACHERNAME;
	private String	ACTIVE;
	private String	ROLE_ID;
	
	private Role role=new Role();
	
	
	public String getID() {
		return ID;
	}
	public void setID(String id) {
		ID = id;
	}
	public String getUSERNO() {
		return USERNO;
	}
	public void setUSERNO(String userno) {
		USERNO = userno;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String password) {
		PASSWORD = password;
	}

	public String getTEACHERNAME() {
		return TEACHERNAME;
	}
	public void setTEACHERNAME(String teachername) {
		TEACHERNAME = teachername;
	}

	public String getACTIVE() {
		return ACTIVE;
	}
	public void setACTIVE(String active) {
		ACTIVE = active;
	}
	public String getROLE_ID() {
		return ROLE_ID;
	}
	public void setROLE_ID(String role_id) {
		ROLE_ID = role_id;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	
	
	
	
	
}
