package edu.sms.action;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import edu.sms.entity.LUser;
import edu.sms.entity.TeacherClass;
import edu.sms.entity.TeacherSignIn;
import edu.sms.entity.TeacherSignInDay;
import edu.sms.entity.Testt;
import edu.sms.page.Page;
import edu.sms.service.LoginService;
import edu.sms.service.TeacherClassService;
import edu.sms.service.TeacherSignInDayService;
import edu.sms.service.TeacherSignInService;
import edu.sms.service.TestService;

public class TeacherAction {
	private TeacherClassService teacherClassService;
	private TeacherSignInService teacherSignInService;
	private TeacherSignInDayService teacherSignInDayService;
	private LoginService loginService;
	private Map session;
	private String message;
	private String url;

	private String cDate;// 查询值班日期
	private Page page;
	private int pageNo = 1;
    
	private List<Testt> testtList;
	private List<TeacherSignIn> teacherSignInList;
	private List<TeacherSignInDay> teacherSignInDayList;
    private TestService testService; 
	public String signInPage() {
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			page = new Page();
			return "signInPage";
		} else {
			return "lose";
		}
	}
    
	
	
	public String test(){
		
		
		
		
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		LUser user = (LUser) session.get("luser");
		Testt f=new Testt();
		//f.setTestId(8);
		f.setTest("31");
		f.setTesta("5");
		
		//testService.s("2","2");
		// TeacherSignInService t=new TeacherSignInService();
		//t.save(teacherSignIn)
		
		testtList=testService.queryList("31", "5");
		//testService.save(f);
		 if(testtList!=null&&testtList.size()>0){
		  	 for(int i=0;i<testtList.size();i++){
		  		testtList.get(i).getTesta();
		  	    //System.out.print("wewe");
		  	 }
		  	 
		  	 }
		 HttpServletRequest request = ServletActionContext.getRequest();
		 request.setAttribute("testtList", testtList);

		return "ff";
		
	}
	
	public String signIn1() {
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		LUser user = (LUser) session.get("luser");
		if (user != null) {
			// 上课时间8：30-10：00 10：10-11：30 2：30-4：00
			Calendar ca = Calendar.getInstance();
			int year = ca.get(Calendar.YEAR);// 获取年份
			int month = ca.get(Calendar.MONTH) + 1;// 获取月份
			int day = ca.get(Calendar.DATE);// 获取日
			int minute = ca.get(Calendar.MINUTE);// 分
			int hour = ca.get(Calendar.HOUR_OF_DAY);// 小时(24小时制)
			int second = ca.get(Calendar.SECOND);// 秒
			int dayOfWeek = ca.get(Calendar.DAY_OF_WEEK) - 1;

			Date t = ca.getTime();
			String aStart = year + "-" + month + "-" + day + " 8:00";
			String aEnd = year + "-" + month + "-" + day + " 9:00";

			String bStart = year + "-" + month + "-" + day + " 10:00";
			String bEnd = year + "-" + month + "-" + day + " 10:40";

			String cStart = year + "-" + month + "-" + day + " 14:00";
			String cEnd = year + "-" + month + "-" + day + " 17:00";

			DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm");
			try {
				if ((t.after(df.parse(aStart)) && t.before(df.parse(aEnd)))
						|| (t.after(df.parse(bStart)) && t.before(df
								.parse(bEnd)))
						|| (t.after(df.parse(cStart)) && t.before(df
								.parse(cEnd)))) {// 可以签到的条件
					int jc;
					if (hour == 8) {
						jc = 1;
					} else if (hour == 10) {
						jc = 2;
					} else {
						jc = 3;
					}
					List<TeacherClass> teacherClassList = teacherClassService
							.queryList("2014-2015-01", user.getUSERNO(),
									dayOfWeek, jc);
					List<TeacherSignIn> teacherSignInList = teacherSignInService
							.queryList("2014-2015-01", user.getUSERNO(),
									dayOfWeek, jc);
					if (teacherSignInList != null
							&& teacherSignInList.size() > 0) {
						message = "尊敬的" + user.getTEACHERNAME()
								+ "老师，您已经签到过了，无需再次签到！！！";
						url = "frame/right.htm";
					} else {
						if (teacherClassList != null
								&& teacherClassList.size() > 0) {
							SimpleDateFormat sdf = new SimpleDateFormat(
									"yyyy-MM-dd");
							SimpleDateFormat sdf1 = new SimpleDateFormat(
									"yyyy-MM-dd,hh:mm:ss");
							TeacherSignIn teacherSignIn = new TeacherSignIn();
							teacherSignIn.setTerm("2014-2015-01");
							teacherSignIn.setTeacherNo(user.getUSERNO());
							teacherSignIn.setSignTime(sdf1.format(t));
							teacherSignIn.setSignDay(sdf.format(t));
							teacherSignIn.setDay(Integer.toString(dayOfWeek));
							teacherSignIn.setFlag("1");
							teacherSignIn.setSignKc(teacherClassList.get(0)
									.getKcName());
							teacherSignIn.setClassName(teacherClassList.get(0)
									.getClassName());
							teacherSignIn.setJc(Integer.toString(jc));

							teacherSignInService.save(teacherSignIn);
							message = "尊敬的" + user.getTEACHERNAME()
									+ "老师，恭喜您签到成功！！！";
							url = "teacher/success.jsp";
						} else {// 教师当前没有课程，请在您有课程的时候再签到
							message = "尊敬的" + user.getTEACHERNAME()
									+ "老师，您当前没有课程，请您在有课程的时候再签到";
							url = "frame/right.htm";
						}
					}

				} else {// 不能够签到
					message = "尊敬的" + user.getTEACHERNAME() + "老师，现在不是签到的时间！！！";
					url = "frame/right.htm";
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "signIn";
		} else {
			return "lose";
		}
	}

	public String signInDay() {
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		LUser user = (LUser) session.get("luser");
		if (user != null) {
			// 签到时间8：00-9：00 2：00-3：00
			Calendar ca = Calendar.getInstance();
			int year = ca.get(Calendar.YEAR);// 获取年份
			int month = ca.get(Calendar.MONTH) + 1;// 获取月份
			int day = ca.get(Calendar.DATE);// 获取日
			int minute = ca.get(Calendar.MINUTE);// 分
			int hour = ca.get(Calendar.HOUR_OF_DAY);// 小时(24小时制)
			int second = ca.get(Calendar.SECOND);// 秒
			int dayOfWeek = ca.get(Calendar.DAY_OF_WEEK) - 1;

			Date t = ca.getTime();
			String aStart = year + "-" + month + "-" + day + " 8:00";
			String aEnd = year + "-" + month + "-" + day + " 9:00";

			String cStart = year + "-" + month + "-" + day + " 14:00";
			String cEnd = year + "-" + month + "-" + day + " 15:00";

			DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm");
			try {
				if ((t.after(df.parse(aStart)) && t.before(df.parse(aEnd)))
						|| (t.after(df.parse(cStart)) && t.before(df
								.parse(cEnd)))) {// 可以签到的条件

//					List<TeacherSignInDay> teacherSignInDayList = teacherSignInDayService
//							.queryList("2013-2014-02", user.getUSERNO(),
//									dayOfWeek);
//					List<TeacherSignInDay> teacherSignInDay1List = teacherSignInDayService
//					.queryList("2013-2014-02", user.getTEACHERNAME(),
//							dayOfWeek);
//					if ((teacherSignInDayList != null
//							&& teacherSignInDayList.size() > 0)||(teacherSignInDay1List!=null&&teacherSignInDay1List.size()>0)) {
//						message = "尊敬的" + user.getTEACHERNAME()
//								+ "老师，您已经签到过了，无需再次签到！！！";
//						url = "frame/right.htm";
//					} else {
						SimpleDateFormat sdf = new SimpleDateFormat(
								"yyyy-MM-dd");
						SimpleDateFormat sdf1 = new SimpleDateFormat(
								"yyyy-MM-dd,hh:mm:ss");
						TeacherSignInDay teacherSignInDay = new TeacherSignInDay();
						teacherSignInDay.setTerm("2013-2014-02");
						teacherSignInDay.setTeacherNo(user.getUSERNO());
						teacherSignInDay.setSignTime(sdf1.format(t));
						teacherSignInDay.setSignDay(sdf.format(t));
						teacherSignInDay.setDay(Integer.toString(dayOfWeek));
						teacherSignInDay.setFlag("1");
						teacherSignInDay.setSignIP("");

						teacherSignInDayService.save(teacherSignInDay);
						message = "尊敬的" + user.getTEACHERNAME()
								+ "老师，恭喜您签到成功！！！";
						url = "teacher/success.jsp";
//					}

				} else {// 不能够签到
					message = "尊敬的" + user.getTEACHERNAME() + "老师，现在不是签到的时间！！！";
					url = "frame/right.htm";
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "signIn";
		} else {
			return "lose";
		}
	}

	public String querySignPage() {
		if (teacherSignInDayList != null && teacherSignInDayList.size() > 0) {
			teacherSignInDayList.clear();
		}
		return "querySignPage";
	}

	/**
	 * 查询教师签到情况
	 * 
	 * @return
	 */
	public String querySign() {
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		LUser user = (LUser) session.get("luser");
		if (user != null) {
			teacherSignInList = teacherSignInService.queryListByDate(cDate);
			page = new Page(1, 10, teacherSignInList.size());
			teacherSignInList = page.showList(teacherSignInList);
			if (teacherSignInList != null && teacherSignInList.size() > 0) {
				for (int i = 0; i < teacherSignInList.size(); i++) {
					LUser u = loginService.queryOneByNo(teacherSignInList
							.get(i).getTeacherNo());
					if (u != null) {
						teacherSignInList.get(i).setTeacherNo(
								u.getTEACHERNAME());
					}
				}

			}
			return "querySign";
		} else {
			return "lose";
		}
	}

	public String querySign1() {
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			teacherSignInList = teacherSignInService.queryListByDate(cDate);
			page = new Page(pageNo, 10, teacherSignInList.size());
			teacherSignInList = page.showList(teacherSignInList);
			return "querySign";
		} else {
			return "lose";
		}
	}
	/**
	 * 测试情况!!!!!!!!!!!!!!!!!!!!!
	 * 
	 * @return
	 */
	public String testF(){
		
		
		return "try";
	}
	
	
	
	
	/**
	 * 查询教师签到情况
	 * 
	 * @return
	 */
	public String querySignDay() {
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		LUser user = (LUser) session.get("luser");
		if (user != null) {
			teacherSignInDayList = teacherSignInDayService
					.queryListByDate(cDate);
			page = new Page(1, 10, teacherSignInDayList.size());
			teacherSignInDayList = page.showList(teacherSignInDayList);
			if (teacherSignInDayList != null && teacherSignInDayList.size() > 0) {
				for (int i = 0; i < teacherSignInDayList.size(); i++) {
					LUser u = loginService.queryOneByNo(teacherSignInDayList
							.get(i).getTeacherNo());
					if (u != null) {
						teacherSignInDayList.get(i).setTeacherNo(
								u.getTEACHERNAME());
					}
				}

			}
			return "querySign";
		} else {
			return "lose";
		}
	}
	public String querySignDay1() {
		session = (Map) ActionContext.getContext().get(ActionContext.SESSION);
		if (session.get("luser") != null) {
			teacherSignInDayList = teacherSignInDayService.queryListByDate(cDate);
			page = new Page(pageNo, 10, teacherSignInDayList.size());
			teacherSignInDayList = page.showList(teacherSignInDayList);
			if (teacherSignInDayList != null && teacherSignInDayList.size() > 0) {
				for (int i = 0; i < teacherSignInDayList.size(); i++) {
					LUser u = loginService.queryOneByNo(teacherSignInDayList
							.get(i).getTeacherNo());
					if (u != null) {
						teacherSignInDayList.get(i).setTeacherNo(
								u.getTEACHERNAME());
					}
				}

			}
			return "querySign";
		} else {
			return "lose";
		}
	}
	
	
	public String testA(){
		
		return "fail";
		
	}
	
	
	
	public TeacherClassService getTeacherClassService() {
		return teacherClassService;
	}

	public void setTeacherClassService(TeacherClassService teacherClassService) {
		this.teacherClassService = teacherClassService;
	}

	public TeacherSignInService getTeacherSignInService() {
		return teacherSignInService;
	}

	public void setTeacherSignInService(
			TeacherSignInService teacherSignInService) {
		this.teacherSignInService = teacherSignInService;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getcDate() {
		return cDate;
	}

	public void setcDate(String cDate) {
		this.cDate = cDate;
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

	public List<TeacherSignIn> getTeacherSignInList() {
		return teacherSignInList;
	}

	public void setTeacherSignInList(List<TeacherSignIn> teacherSignInList) {
		this.teacherSignInList = teacherSignInList;
	}

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	public TeacherSignInDayService getTeacherSignInDayService() {
		return teacherSignInDayService;
	}

	public void setTeacherSignInDayService(
			TeacherSignInDayService teacherSignInDayService) {
		this.teacherSignInDayService = teacherSignInDayService;
	}
	
	public TestService getTestService() {
		return testService;
	}

	public void setTestService(
			TestService testService) {
		this.testService = testService;
	}

	public List<TeacherSignInDay> getTeacherSignInDayList() {
		return teacherSignInDayList;
	}

	public void setTeacherSignInDayList(
			List<TeacherSignInDay> teacherSignInDayList) {
		this.teacherSignInDayList = teacherSignInDayList;
	}

}
