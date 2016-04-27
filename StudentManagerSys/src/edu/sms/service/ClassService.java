package edu.sms.service;

import java.util.List;

import edu.sms.dao.Dao;
import edu.sms.entity.ClassDuty;
import edu.sms.entity.Student;
import edu.sms.entity.TeacherSignInDay;


public class ClassService {
	private Dao dao;

	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	

	public List<Student> queryList(String classNo) {
		String hql="from Student where classno="+classNo;
		return dao.getHibernateTemplate().find(hql);	
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
