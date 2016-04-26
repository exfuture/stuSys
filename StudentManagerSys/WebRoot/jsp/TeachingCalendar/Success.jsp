<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>教学日历</title>
</head>

<body>
<form  method="post" name="SuccessForm">
<table align="center">
<tr align="center" ><td align="center"><img  src="<%=request.getContextPath()%>/images/xl.jpg"/><font color="#00CCFF"  size="+6">教学日历制定成功！</font></td></tr><tr align="center"><td align="center"><a href="<%=request.getContextPath() %>/jsp/TeachingCalendar/TeachingCalendarIndex.jsp" >返回首页</a></td></table></form>
</body>
</html>
