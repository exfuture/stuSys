package edu.sms.action;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.sms.entity.Func;
import edu.sms.entity.LUser;
import edu.sms.entity.Role_Function;
import edu.sms.service.LoginService;

/**
 * 
 * 该类是登录的应用类，主要实现对用户名和密码的验证
 * 
 * @author Administrator
 * 
 */
public class LoginAction extends ActionSupport  {

	/**
	 * 
	 */
	// private static final long serialVersionUID = 1L;
	private LoginService loginService;
	private String username;
	private String password;
	private String ltype;
	private String loginId;

	private LUser luser = new LUser();
	// private HttpServletRequest request = ServletActionContext.getRequest();

	private List<Func> functionList = new ArrayList();

	public LUser luser() {
		luser = (LUser) loginService.queryOne(username).get(0);
		return luser;

	}

	public String login() {

		if (loginService.login(username, password)) {
			Map session = (Map) ActionContext.getContext().get(
					ActionContext.SESSION);
			String s=((Long)((Calendar.getInstance()).getTimeInMillis())).toString();

//			Map request = (Map)ActionContext.getContext().get("request");
//			(ServletActionContext.getRequest().getRemoteAddr()).toString();
			if (s.substring(0, 8).equals(loginId.substring(0, 8))) {
				LUser user = new LUser();
				user = (LUser) loginService.queryOne(username).get(0);
				System.out.println(user.getTEACHERNAME());
				System.out.println(user.getACTIVE());
				if (user.getACTIVE().equals("0")) {
					return "lose";
				}
				ltype = user.getROLE_ID();

				System.out.println(ltype + username);
				List<Role_Function> listRF = loginService.queryRoleFunction(ltype);
				System.out.println(listRF.size());

				for (int i = 0; i < listRF.size(); i++) {
					Func f = new Func();
					f = loginService.queryFunction(listRF.get(i).getFUNCTION_ID());
					System.out.println(listRF.get(i).getFUNCTION_ID());
					functionList.add(f);
				}
				System.out.println(functionList.size());
				for (int i = 0; i < functionList.size(); i++) {
					System.out.println("queryFunction");
					System.out.println(functionList.get(i).getFUNCTION_ID());
				}
				username = username;


				session.put("username", user.getTEACHERNAME());
				session.put("luser", user);
				return "success";
			}else
				return "lose";
		}else{
			return "lose";
		}

	}

	public List queryFunction() {

		List<Role_Function> listRF = loginService.queryRoleFunction(ltype);
		System.out.println(listRF.size());

		functionList.clear();
		for (int i = 0; i < listRF.size(); i++) {
			Func f = new Func();
			f = loginService.queryFunction(listRF.get(i).getFUNCTION_ID());
			System.out.println(listRF.get(i).getFUNCTION_ID());
			functionList.add(f);
		}
		System.out.println(functionList.size());
		for (int i = 0; i < functionList.size(); i++) {
			System.out.println("queryFunction");
			System.out.println(functionList.get(i).getFUNCTION_ID());
		}
		return functionList;
	}

	public String reloadup() {

		return "reloadup";
	}

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {

		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLtype() {
		return ltype;
	}

	public void setLtype(String ltype) {
		this.ltype = ltype;
	}

	public LUser getLuser() {
		return luser;
	}

	public void setLuser(LUser luser) {
		this.luser = luser;
	}

	public List<Func> getFunctionList() {
		return functionList;
	}

	public void setFunctionList(List<Func> functionList) {
		this.functionList = functionList;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

}
