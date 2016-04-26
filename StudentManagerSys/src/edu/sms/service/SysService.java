package edu.sms.service;

import java.util.List;

import edu.sms.dao.Dao;
import edu.sms.entity.Func;
import edu.sms.entity.LUser;
import edu.sms.entity.Role;
import edu.sms.entity.Role_Function;



public class SysService {

	private Dao dao;
	
	
	
	public List queryUsers(){
		
		return dao.getHibernateTemplate().loadAll(LUser.class);
	}

	public List queryLUsers(String role_id){
		
		String hql="from LUser l where l.ROLE_ID=?";
		
		return dao.getHibernateTemplate().find(hql,role_id);
		
	}
	public List queryRoles(){
		
		return dao.getHibernateTemplate().loadAll(Role.class);
	}
	
	
	public List queryfunctions(){
				
		return dao.getHibernateTemplate().loadAll(Func.class);
	}
	
	public List queryLUser(String username){
		
		String hql="from LUser l where l.USERNO=?";
		return dao.getHibernateTemplate().find(hql,username);
	}
	
	public Role queryRole(String Role_id){
		
		return (Role) dao.getHibernateTemplate().load(Role.class, Role_id);
		
	}
	
	public void updateRole(Role role){
		
		dao.getHibernateTemplate().update(role);
	}
	
	public void deleteRole(Role role){
		
		dao.getHibernateTemplate().delete(role);
	}
	
	public List queryRole_Functions(String role_id){
		
		String hql="from Role_Function rf where rf.ROLE_ID=? ";
		
		return dao.getHibernateTemplate().find(hql,role_id);
	}
	
	public void saveRole_Function(Role_Function rf){
		
		dao.getHibernateTemplate().save(rf);
	}
	
	public void updateRole_Function(Role_Function rf){
		
		dao.getHibernateTemplate().update(rf);
	}
	
	
	public void deleteRole_Function(Role_Function rf){
		
		dao.getHibernateTemplate().delete(rf);
	}
	
	public void saveLUser(LUser luser){
		
		dao.getHibernateTemplate().save(luser);
		
	}
	
	public void saveRole(Role role){
		
		dao.getHibernateTemplate().save(role);
	}
	
	public void updateLUser(LUser luser){
		
		dao.getHibernateTemplate().update(luser);
	}
	
	public void deleteLUser(LUser luser){
		
		dao.getHibernateTemplate().delete(luser);
	}
	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}
	
	
}
