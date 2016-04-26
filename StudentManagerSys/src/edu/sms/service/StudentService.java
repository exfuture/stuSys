package edu.sms.service;

import java.util.List;

import edu.sms.dao.Dao;
import edu.sms.entity.Student;

public class StudentService {

	private Dao dao;

	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	public List<Student> queryStudentList(String classNo) {
		String hql = "from Student s where s.classNo=?";

		return dao.getHibernateTemplate().find(hql, classNo);
	}

	public List<Student> queryStudentListByStuNo(String stuNo) {
		// TODO Auto-generated method stub
		String hql = "from Student s where s.stuNo=?";
		return dao.getHibernateTemplate().find(hql, stuNo);
		
	}

}
