<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教学质量评估系统编辑课程类别</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">修改类别名称</span>
			</td>
		</tr>
	</table>
<br><br><br>
<form action="<%=request.getContextPath() %>/lessonType!editLessonType.action" method="post">
<input type="hidden" name="lessonType.typeCode" value="${lessonType.typeCode}">

<table width="80%" bgcolor="#55AAEE" align="center">
	<!--标题行 -->
	<tr align="center" valign="middle" height="28">

		<td  align="center" class="tabletitle">原课程类别名称</td>
		<td bgcolor="#FFFFFF" align="center">
			${lessonType.typeName} 	 
		</td>
		
	</tr>
	<tr align="center" valign="middle" height="28">

		<td  align="center" class="tabletitle">新的角色名称</td>
		<td td bgcolor="#FFFFFF" align="center">
			<input type="text" name="lessonType.typeName"/>	 
		</td>
	</tr>
	<tr align="center" valign="middle" height="28">
		<td  align="center" class="tabletitle"></td>
		<td td bgcolor="#FFFFFF" align="center">
			<input type="submit" value="提交"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>