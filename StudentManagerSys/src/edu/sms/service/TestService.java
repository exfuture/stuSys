package edu.sms.service;

import java.util.List;

import edu.sms.dao.Dao;
import edu.sms.entity.ClassDuty;
import edu.sms.entity.TeacherSignIn;
import edu.sms.entity.TeacherSignInDay;
import edu.sms.entity.Testt;

public class TestService {
	private Dao dao;
	public void save(TeacherSignInDay teacherSignInDay) {
		dao.getHibernateTemplate().save(teacherSignInDay);
	}
	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	public void save(Testt t) {
		dao.getHibernateTemplate().save(t);
	}
	public List<Testt> queryList(String test, String testa) {
		String hql="from Testt where test='"+test+"' and testa='"+testa+"'";
		return dao.getHibernateTemplate().find(hql);	
	}
	 
}
