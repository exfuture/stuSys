package edu.sms.service;

import java.util.List;

import edu.sms.dao.Dao;
import edu.sms.entity.StudentSituation;

public class StudentSituationService {
	private Dao dao;

	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	public StudentSituation queryOne(String stuNo, String term) {
		String hql="from StudentSituation where stuNo='"+stuNo+"' and term='"+term+"'";
		List<StudentSituation> situationList= dao.getHibernateTemplate().find(hql);
		if (situationList!=null&&situationList.size()>0) {
			return situationList.get(0);
		}else{
			return null;
		}
	}

	public void update(StudentSituation ss) {
		dao.getHibernateTemplate().update(ss);
	}

}
