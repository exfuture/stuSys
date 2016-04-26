package edu.sms.service;

import java.util.List;

import edu.sms.dao.Dao;
import edu.sms.entity.ClassDuty;
import edu.sms.entity.TeacherSignIn;

public class TeacherSignInService {
	private Dao dao;

	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	public void save(TeacherSignIn teacherSignIn) {
		dao.getHibernateTemplate().save(teacherSignIn);
	}

	public List<TeacherSignIn> queryList(String term, String userno,
			int day, int jc) {
		String hql="from TeacherSignIn where term='"+term+"' and teacherNo='"+userno+"' and day='"+day+"' and jc='"+jc+"'";
		return dao.getHibernateTemplate().find(hql);	
	}

	public List<TeacherSignIn> queryListByDate(String cDate) {
		List <TeacherSignIn> teacherSignInList;
		String st="";
		if (cDate.equals("")) {
			st=st+"1=1 ";
		}else {
			st="signDay='"+cDate+"'";
		}
		String hql;
		hql = "from TeacherSignIn where  "+st;
		teacherSignInList=dao.getHibernateTemplate().find(hql);
		return teacherSignInList;
	}

}
