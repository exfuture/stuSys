package edu.sms.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.sms.entity.ClassDuty;
import edu.sms.entity.Func;
import edu.sms.entity.LUser;
import edu.sms.entity.Role_Function;
import edu.sms.entity.Student;
import edu.sms.entity.StudentScore;
import edu.sms.entity.StudentSituation;
import edu.sms.page.Page;
import edu.sms.service.ClassDutyService;
import edu.sms.service.LoginService;
import edu.sms.service.StudentScoreService;
import edu.sms.service.StudentService;
import edu.sms.service.StudentSituationService;
import edu.sms.util.CommonTools;

/**
 * 
 * �����ǵ�¼��Ӧ���࣬��Ҫʵ�ֶ��û������������֤
 * 
 * @author Administrator
 * 
 */
public class StudentAction extends ActionSupport {

	/**
	 * 
	 */
	// private static final long serialVersionUID = 1L;
	private StudentService studentService;
	private StudentScoreService studentScoreService;
	private ClassDutyService classDutyService;
	private StudentSituationService studentSituationService;
	private String classNo;
	private String stuNo;
	private Student stu;
	private List<Student> studentList;
	private List<StudentScore> studentScoreList;
	private HttpServletRequest request;
	private String chooseDate;// �ӿ۷�����
	private String cut;// �ӿ۷ַ�ֵ
	private String reason;// �ӿ۷�ԭ��
	private Map session;
	private HttpServletResponse response;

	private String userName;// ��¼������
	private String today;// ��������
	private List<ClassDuty> classDutyList;// ��¼ֵ����Ϣ
	private List<ClassDuty> classDutyQueryList;

	private String cDate;// ��ѯֵ������
	private String queryClassNo;// ��ѯֵ��༶
	private String queryTeacherName;// ��ѯֵ���ʦ

	private Page page;
	private int pageNo = 1;

	/**
	 * �ɰ༶��༶��ѧ��
	 * 
	 * @return
	 */
	public String getStuList() {
		Map session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			if (studentList != null)
				studentList.clear();
			studentList = studentService.queryStudentList(classNo);
			if (studentList != null && studentList.size() > 0) {
				for (int i = 0; i < studentList.size(); i++) {
					Student s=studentList.get(i);
					StudentSituation ss=studentSituationService.queryOne(s.getStuNo(),"2014-2015-01");
					if (ss!=null) {
						s.setLastTermRank(ss.getLastTermRank());
						s.setLastTermScore(ss.getLastTermScore());
						s.setStudentScore(ss.getStudentScore());
						s.setTerm(ss.getTerm());				
					}else{
						s.setStudentScore("0");
					}
				}
			}
			return "student";
		} else {
			return "lose";
		}

	}

	/**
	 * ����ѧ���ļӿ۷�ҳ��
	 * 
	 * @return
	 */
	public String getStudentScore() {
		Map session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			if (studentList != null)
				studentList.clear();
			Student student = studentService.queryStudentListByStuNo(stuNo).get(0);
			StudentSituation ss=studentSituationService.queryOne(student.getStuNo(),"2014-2015-01");
			if (ss!=null) {
				student.setLastTermRank(ss.getLastTermRank());
				student.setLastTermScore(ss.getLastTermScore());
				student.setStudentScore(ss.getStudentScore());
				student.setTerm(ss.getTerm());
				HttpServletRequest request = ServletActionContext.getRequest();
				request.setAttribute("stu1", student);
			}
			return "studentScore";
		} else {
			return "lose";
		}
	}

	/**
	 * �ӿ۷�
	 */
	public String cut() {
		Map session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			// �޸�ѧ�����ܷ�
			HttpServletRequest request = ServletActionContext.getRequest();
			String stuno=request.getParameter("stuNo");			
			String studentscore=request.getParameter("studentScore");
			StudentSituation ss=studentSituationService.queryOne(stuno,"2014-2015-01");
			if (studentscore!=null) {
				Float score = Float.parseFloat(studentscore)
				+ Float.parseFloat(cut);	
				if (ss==null) {		
					
				}else{
					ss.setStudentScore(Float.toString(score));
					studentSituationService.update(ss);
				}

				// ����ѧ���ļӿ۷����
				StudentScore studentScore = new StudentScore();
				studentScore.setStuNo(stuno);
				studentScore.setDate(chooseDate);
				studentScore.setAddorcut(cut);
				try {
					String reason=request.getParameter("reason");
//					reason = java.net.URLDecoder.decode(reason,"UTF-8");
					reason = new String(reason.getBytes("ISO-8859-1"), "UTF-8");
					studentScore.setReason(reason);
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
//				try {
//					reason = new String(reason.getBytes("ISO-8859-1"), "UTF-8");
//				} catch (UnsupportedEncodingException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//				studentScore.setReason(reason);
				studentScore.setStudentScore(score.toString());
				studentScore
						.setPfr(((LUser)(request.getSession().getValue("luser"))).getTEACHERNAME());
				studentScore.setTerm("2014-2015-01");
				studentScore.setSubTime(CommonTools.getCurrentTime());
				studentScoreService.save(studentScore);

				return getStudentScore();
			}else{
				return "backF";
			}

		} else {
			return "lose";
		}
	}

	/**
	 * ��ѯѧ�����
	 */
	public String getStudentSituation() {
		
		Map session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			HttpServletRequest request = ServletActionContext.getRequest();
			String stuno=request.getParameter("stuNo");			
			Student s = studentService.queryStudentListByStuNo(stuno).get(0);
			studentScoreList = studentScoreService.queryStudentScores(stuno,"2014-2015-01");
			if (studentScoreList.size() > 0) {
				for (int i = 0; i < studentScoreList.size(); i++) {
					studentScoreList.get(i).setStuName(s.getStuName());
				}
			}
			return "studentSituation";
		} else {
			return "lose";
		}
	}

	/**
	 * ��ֵ���ҳ��
	 * 
	 * @return
	 */
	public String openDuty() {
		Map session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			userName = ((LUser) session.get("luser")).getTEACHERNAME();
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			today = sdf.format(date);
			return "openDuty";
		} else {
			return "lose";
		}
	}

	/**
	 * ����ֵ�����Ϣ
	 * 
	 * @return
	 */
	public String saveDuty() {
		Map session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			userName = ((LUser) session.get("luser")).getTEACHERNAME();
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd,hh:mm:ss");
			if (classDutyList != null && classDutyList.size() > 0) {
				for (int i = 0; i < classDutyList.size(); i++) {
					classDutyList.get(i).setDutyPerson(userName);
					classDutyList.get(i).setDutyDate(sdf.format(new Date()));
					classDutyList.get(i).setTxsj(sdf1.format(new Date()));
				}
				classDutyService.saveClassDutyList(classDutyList);
			}
			classDutyList.clear();
			return "openDuty";
		} else {
			return "lose";
		}
	}

	/**
	 * ��ѯֵ�����
	 * 
	 * @return
	 */
	public String queryDuty() {
		Map session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			classDutyQueryList = classDutyService.queryClassDutyList(cDate,
					queryClassNo, queryTeacherName);
			page = new Page(1, 10, classDutyQueryList.size());
			classDutyQueryList = page.showList(classDutyQueryList);
			return "queryDuty";
		} else {
			return "lose";
		}
	}

	public String queryDuty1() {
		Map session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			classDutyQueryList = classDutyService.queryClassDutyList(cDate,
					queryClassNo, queryTeacherName);
			page = new Page(pageNo, 10, classDutyQueryList.size());
			classDutyQueryList = page.showList(classDutyQueryList);
			return "queryDuty";
		} else {
			return "lose";
		}
	}

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	public StudentScoreService getStudentScoreService() {
		return studentScoreService;
	}

	public void setStudentScoreService(StudentScoreService studentScoreService) {
		this.studentScoreService = studentScoreService;
	}

	public String getClassNo() {
		return classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}

	public List<Student> getStudentList() {
		return studentList;
	}

	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}

	public String getStuNo() {
		return stuNo;
	}

	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public String getChooseDate() {
		return chooseDate;
	}

	public void setChooseDate(String chooseDate) {
		this.chooseDate = chooseDate;
	}

	public String getCut() {
		return cut;
	}

	public void setCut(String cut) {
		this.cut = cut;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public List<StudentScore> getStudentScoreList() {
		return studentScoreList;
	}

	public void setStudentScoreList(List<StudentScore> studentScoreList) {
		this.studentScoreList = studentScoreList;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	public List<ClassDuty> getClassDutyList() {
		return classDutyList;
	}

	public void setClassDutyList(List<ClassDuty> classDutyList) {
		this.classDutyList = classDutyList;
	}

	public ClassDutyService getClassDutyService() {
		return classDutyService;
	}

	public void setClassDutyService(ClassDutyService classDutyService) {
		this.classDutyService = classDutyService;
	}

	public String getcDate() {
		return cDate;
	}

	public void setcDate(String cDate) {
		this.cDate = cDate;
	}

	public String getQueryClassNo() {
		return queryClassNo;
	}

	public void setQueryClassNo(String queryClassNo) {
		this.queryClassNo = queryClassNo;
	}

	public String getQueryTeacherName() {
		return queryTeacherName;
	}

	public void setQueryTeacherName(String queryTeacherName) {
		this.queryTeacherName = queryTeacherName;
	}

	public List<ClassDuty> getClassDutyQueryList() {
		return classDutyQueryList;
	}

	public void setClassDutyQueryList(List<ClassDuty> classDutyQueryList) {
		this.classDutyQueryList = classDutyQueryList;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public StudentSituationService getStudentSituationService() {
		return studentSituationService;
	}

	public void setStudentSituationService(
			StudentSituationService studentSituationService) {
		this.studentSituationService = studentSituationService;
	}

}
