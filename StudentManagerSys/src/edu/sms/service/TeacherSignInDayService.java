package edu.sms.service;

import java.util.List;

import edu.sms.dao.Dao;
import edu.sms.entity.ClassDuty;
import edu.sms.entity.TeacherSignInDay;


public class TeacherSignInDayService {
	private Dao dao;

	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	public void save(TeacherSignInDay teacherSignInDay) {
		dao.getHibernateTemplate().save(teacherSignInDay);
	}

	public List<TeacherSignInDay> queryList(String term, String userno,
			int day) {
		String hql="from TeacherSignInDay where term='"+term+"' and teacherNo=? and day='"+day+"'";
		return dao.getHibernateTemplate().find(hql,userno);	
	}

	public List<TeacherSignInDay> queryListByDate(String cDate) {
		List <TeacherSignInDay> teacherSignInDayList;
		String st="";
		if (cDate.equals("")) {
			st=st+"1=1 ";
		}else {
			st="signDay='"+cDate+"'";
		}
		String hql;
		hql = "from TeacherSignInDay where  "+st;
		teacherSignInDayList=dao.getHibernateTemplate().find(hql);
		return teacherSignInDayList;
	}

}
