package edu.sms.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import lgd.jy444.yxn.page.Page;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.sms.entity.Func;
import edu.sms.entity.LUser;
import edu.sms.entity.Role;
import edu.sms.entity.Role_Function;
import edu.sms.service.SysService;

public class TestAction extends ActionSupport {

	/**
	 * 
	 */
	// private static final long serialVersionUID = 1L;
	private SysService sysService;
	private List<LUser> userList = new ArrayList();
	private List<LUser> pageUserList;

	private List<Role> roleList;
	private List<Func> functionList;
	private List<Role_Function> rfList;

	private LUser luser = new LUser();
	private Role role = new Role();

	private String username;
	private String ltype;
	private String role_id;
	private String funids[];
	private Map session;
	private String oldPassword;
	private String newPassword;
	private Page page;
	private int pageNo = 1;

	public String addAction(){
		
		return "test";
	}
}
