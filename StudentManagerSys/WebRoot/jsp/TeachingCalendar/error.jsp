<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
</head>
<script language="javascript">
 function cform(){ 
		if(��confirm("�Ƿ�Ҫ������һҳ��"))
		   return false;		
		   else
	}  
	 </script>

<body>
<img src="<%=request.getContextPath()%>/images/sb.jpg"/>
<a href="javascript:history.go(-1);" onclick="cform();">������һҳ</a> 
<a href="<%=request.getContextPath() %>/jsp/TeachingCalendar/TeachingCalendarIndex.jsp" >������ҳ</a> 
</body>
</html>
