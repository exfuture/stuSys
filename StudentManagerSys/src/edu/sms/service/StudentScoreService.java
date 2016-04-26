package edu.sms.service;

import java.util.List;

import edu.sms.dao.Dao;
import edu.sms.entity.Student;
import edu.sms.entity.StudentScore;

public class StudentScoreService {

	private Dao dao;

	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	public void save(StudentScore studentScore) {
		dao.getHibernateTemplate().save(studentScore);
	}

	public List<StudentScore> queryStudentScores(String stuNo) {
		String hql = "from StudentScore ss where ss.stuNo=?";
		return dao.getHibernateTemplate().find(hql, stuNo);
	}

	public List<StudentScore> queryStudentScores(String stuNo, String term) {
		String hql = "from StudentScore ss where ss.stuNo='"+stuNo+"' and ss.term='"+term+"'";
		return dao.getHibernateTemplate().find(hql);

	}



}
