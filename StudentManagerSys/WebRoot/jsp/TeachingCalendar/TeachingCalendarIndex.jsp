<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��ѧ����</title>
</head>

<body>
<form  name="loginform"  method="post" >
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table align="center"  width="80%">
<tr align="center"><td><font color="#00CCFF" size="+2">��ѧ������ҳ</font></td></tr>
<tr  align="left" ><td align="center"><p>&nbsp;</p>
  <p><font color="#00CCFF" size="+1"><a  href="<%=request.getContextPath()%>/jsp/TeachingCalendar/SeekCalendar.jsp">�����ѧ������ѯ</a>
  </font></p>
  </td></tr>
  <tr  align="left" ><td align="center"><p>&nbsp;</p>
  <input type=hidden name=tclist />
      <p><font color="#00CCFF" size="+1"><a  href="<%=request.getContextPath()%>/teachingCalendar!ChooseTeclass.action">�����ѧ�����ƶ�</a>
          </font></p></td></tr>
</table>
</form>

</body>
</html>
