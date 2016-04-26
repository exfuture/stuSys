package edu.sms.service;

import java.util.Calendar;
import java.util.List;



import com.opensymphony.xwork2.ActionSupport;

import edu.sms.dao.Dao;
import edu.sms.entity.Func;
import edu.sms.entity.LUser;



/**
 * 
 * �������û���¼�ķ����࣬�����ж��û����������Ƿ���ȷ
 * @author Administrator
 *
 */
public class LoginService {
	
	private Dao dao;
	
	/**
	 * 
	 * �÷��������ж��û����������Ƿ���ȷ
	 * @param username
	 * @param password
	 * @return true
	 */
	public boolean login(String username,String password ){
		LUser user=new LUser();
		List list=dao.getHibernateTemplate().find("from LUser where USERNO='"+username+"'");
		System.out.println(list.size()+"&&&&&&&&&&");
		
		if(list.size()==0)
			return false;
		else
		{
			user=(LUser) list.get(0);			
			if(password.equals(user.getPASSWORD()))
				return true;
			else
				return false;
		}
		
	}

	public List queryRoleFunction(String ltype){
		
		return dao.getHibernateTemplate().find("from Role_Function where ROLE_ID='"+ltype+"'");

	}
	
	public Func queryFunction(String Function_id){
		
		return (Func) dao.getHibernateTemplate().load(Func.class, Function_id);
	}
	public List queryOne(String username){
		
		String hql="from LUser l where l.USERNO=?";
		return  dao.getHibernateTemplate().find(hql,username);
	}
	
	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	public LUser queryOneByNo(String teacherNo) {
		String hql="from LUser where USERNO='"+teacherNo+"'";
		List<LUser> userList=dao.getHibernateTemplate().find(hql);
		if (userList!=null&&userList.size()>0) {
			return (LUser) dao.getHibernateTemplate().find(hql).get(0);
		}else{
			return null;
		}
		
	}


	
	
}
