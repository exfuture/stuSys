<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>�鿴��ѧ����</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>

	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">ѡ��Ҫ���۵Ľ�ʦ</span>
			</td>
			
	</table>
	<br><br><br>
<form action="<%=request.getContextPath() %>/expertAssessment!queryExpertLessons.action" method="post">
	<table width="80%" bgcolor="#55AAEE" align="center">
		<tr align="center" valign="middle" height="28">	
			<td align="center" class="tabletitle">�����ʦ���</td>
		</tr>		
		<tr >
			<td bgcolor="#FFFFFF" align="center">
				<input type="text" name="userno">
			</td>	    
		</tr>
		<tr >
			<td bgcolor="#FFFFFF" align="center">
				<input type="submit" value="��ѯ"/>
			</td>	    
		</tr>
	</table>
</form>
</body>
</html>