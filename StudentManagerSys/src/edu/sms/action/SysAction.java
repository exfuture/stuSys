package edu.sms.action;

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

public class SysAction extends ActionSupport {

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

	public String queryUser() {
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			luser = (LUser) session.get("luser");
			return "queryLuser";
		} else {
			return "lose";
		}
	}

	public String changePassword() {
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			luser = (LUser) session.get("luser");
			if (oldPassword.equals(luser.getPASSWORD())) {
				luser.setPASSWORD(newPassword);
				sysService.updateLUser(luser);
			} else {
				return "queryLuser";
			}
			return "queryLuser";
		} else {
			return "lose";
		}
	}

	public String queryUsers() {
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			userList.clear();
			roleList = sysService.queryRoles();
			List<LUser> luserList = sysService.queryUsers();
			for (int i = 0; i < luserList.size(); i++) {
				if (luserList.get(i).getACTIVE().equals("1")) {
					userList.add(luserList.get(i));
				}
			}

			for (int i = 0; i < userList.size(); i++) {
				Role role = new Role();
				if (userList.get(i).getROLE_ID() == null)
					;
				else {
					role = sysService.queryRole(userList.get(i).getROLE_ID());
					userList.get(i).setRole(role);
				}

			}
			page = new Page(pageNo, 10, userList.size());
			pageUserList = page.showList(userList);

			return "query";
		} else {
			return "lose";
		}
	}

	public String queryRoles() {

		List<Role> list = sysService.queryRoles();
		page = new Page(pageNo, 10, list.size());
		roleList = page.showList(list);
		return "queryRoles";
	}

	public String addRole() {

		sysService.saveRole(role);
		roleList = sysService.queryRoles();
		return "queryRoles";
	}

	/*
	 * 
	 * 删除角色，如果角色被用户使用，则不能删除
	 */

	public String deleteRole() {

		userList = sysService.queryLUsers(role_id);
		if (userList.size() != 0) {
			roleList = sysService.queryRoles();
			return "deleteRoleError";
		} else {
			List<Role_Function> rfList = sysService
					.queryRole_Functions(role_id);
			for (int i = 0; i < rfList.size(); i++) {

				sysService.deleteRole_Function(rfList.get(i));
			}

			role = sysService.queryRole(role_id);
			sysService.deleteRole(role);

			roleList = sysService.queryRoles();
			return "queryRoles";
		}

	}

	public String addFunctionPage() {

		role = sysService.queryRole(role_id);
		functionList = sysService.queryfunctions();
		rfList = sysService.queryRole_Functions(role_id);

		return "addRolePage";
	}

	public String addFunction() {

		HttpServletRequest request = ServletActionContext.getRequest();
		funids = request.getParameterValues("lcheckbox");

		rfList = sysService.queryRole_Functions(role_id);
		if (rfList.size() == 0) {
			for (int i = 0; i < funids.length; i++) {

				Role_Function rf = new Role_Function();
				rf.setROLE_ID(role_id);
				rf.setFUNCTION_ID(funids[i]);
				sysService.saveRole_Function(rf);
			}
		} else {
			for (int i = 0; i < rfList.size(); i++) {
				sysService.deleteRole_Function(rfList.get(i));
			}
			for (int i = 0; i < funids.length; i++) {

				Role_Function rf = new Role_Function();
				rf.setROLE_ID(role_id);
				rf.setFUNCTION_ID(funids[i]);
				sysService.saveRole_Function(rf);
			}

		}

		roleList = sysService.queryRoles();
		return "queryRoles";
	}

	public String editRolePage() {

		role = sysService.queryRole(role_id);

		return "editRolePage";
	}

	public String editRole() {

		sysService.updateRole(role);

		roleList = sysService.queryRoles();
		return "queryRoles";
	}

	public String addUser() {

		sysService.saveLUser(luser);

		roleList = sysService.queryRoles();
		userList = sysService.queryUsers();
		for (int i = 0; i < userList.size(); i++) {
			Role role = new Role();
			role = sysService.queryRole(userList.get(i).getROLE_ID());
			userList.get(i).setRole(role);
		}

		return "query";
	}

	/*
	 * 
	 * 用户角色添加和修改页面
	 */
	public String editPage() {

		luser = (LUser) sysService.queryLUser(username).get(0);
		roleList = sysService.queryRoles();
		username = username;
		return "editPage";
	}

	/*
	 * 给用户添加角色或者修改角色
	 * 
	 * @return
	 */
	public String edit() {

		luser = (LUser) sysService.queryLUser(username).get(0);
		luser.setROLE_ID(ltype);
		sysService.updateLUser(luser);

		return queryUsers();
	}

	/*
	 * 
	 * 删除用户
	 */
	public String delete() {

		luser = (LUser) sysService.queryLUser(username).get(0);
		luser.setACTIVE("0");
		sysService.updateLUser(luser);

		return queryUsers();

	}

	public SysService getSysService() {
		return sysService;
	}

	public void setSysService(SysService sysService) {
		this.sysService = sysService;
	}

	public List getUserList() {
		return userList;
	}

	public List<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}

	public void setUserList(List<LUser> userList) {
		this.userList = userList;
	}

	public LUser getLuser() {
		return luser;
	}

	public void setLuser(LUser luser) {
		this.luser = luser;
	}

	public String[] getFunids() {
		return funids;
	}

	public void setFunids(String[] funids) {
		this.funids = funids;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getLtype() {
		return ltype;
	}

	public void setLtype(String ltype) {
		this.ltype = ltype;
	}

	public String getRole_id() {
		return role_id;
	}

	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List<Func> getFunctionList() {
		return functionList;
	}

	public void setFunctionList(List<Func> functionList) {
		this.functionList = functionList;
	}

	public List<Role_Function> getRfList() {
		return rfList;
	}

	public void setRfList(List<Role_Function> rfList) {
		this.rfList = rfList;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}

	public List<LUser> getPageUserList() {
		return pageUserList;
	}

	public void setPageUserList(List<LUser> pageUserList) {
		this.pageUserList = pageUserList;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

}
