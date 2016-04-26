<%@ page language="java" contentType="text/html; charset=gbk" %>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<%
	session.invalidate();
	response.setHeader("Cache-Control","no-cache"); 
	response.setHeader("Pragma","no-cache"); 
	response.setDateHeader("Expires",0); 
	response.sendRedirect("login.jsp");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>教学质量评估系统</title>
 	<META HTTP-EQUIV="pragma" CONTENT="no-cache">

	</head>	
<script type="text/javascript">


</script>


<body>

</body>

</html>