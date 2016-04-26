package edu.sms.service;

import java.util.List;

import edu.sms.dao.Dao;
import edu.sms.entity.TeacherClass;

public class TeacherClassService {
	private Dao dao;

	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	public List<TeacherClass> queryList(String term, String userno, int day, int jc) {
		String hql="from TeacherClass where term='"+term+"' and teacherNo='"+userno+"' and day='"+day+"' and jc='"+jc+"'";
		return dao.getHibernateTemplate().find(hql);	
	}



}
