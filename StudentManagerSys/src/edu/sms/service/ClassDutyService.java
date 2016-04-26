package edu.sms.service;

import java.util.List;

import edu.sms.dao.Dao;
import edu.sms.entity.ClassDuty;
import edu.sms.entity.Student;

public class ClassDutyService {

	private Dao dao;

	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

    public void saveClassDutyList(List<ClassDuty> classDutyList){
    	if (classDutyList!=null&&classDutyList.size()>0) {
			for (int i = 0; i < classDutyList.size(); i++) {
				dao.getHibernateTemplate().save(classDutyList.get(i));
			}
		}
    }

	public List<ClassDuty> queryClassDutyList(String cDate,
			String queryClassNo, String queryTeacherName) {
		List <ClassDuty> classDutyList;
		String st="";
		if (cDate.equals("")) {
			st=st+"1=1 and ";
		}else {
			st=st+"cd.dutyDate='"+cDate+"' and ";
		}
		if(queryClassNo.equals("0")){
			st=st+"1=1 and ";
		}else{
			st=st+"cd.classNo="+queryClassNo+"and ";
		}
		String hql;
		if (queryTeacherName.equals("0")) {
			st=st+"1=1 ";
			hql = "from ClassDuty cd where  "+st;
			classDutyList=dao.getHibernateTemplate().find(hql);
		}else{
			st=st+"cd.dutyPerson=?";	
			hql = "from ClassDuty cd where  "+st;
			classDutyList=dao.getHibernateTemplate().find(hql,queryTeacherName);		
		}
		
		return classDutyList;
	}

}
