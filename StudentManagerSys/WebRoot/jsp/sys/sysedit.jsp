<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>��ѧ��������ϵͳ</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>

<body>

<form action="<%=request.getContentType() %>/sys!edit.action">
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">${luser.TEACHERNAME}��ɫ�޸�</span>
			</td>			
		</tr>
	</table>
<br><br><br>
<input type="hidden" name="username" value="${username}">
<table  width="80%" bgcolor="#55AAEE" align="center">	
	<tr align="center" valign="middle" height="28">
	<td align="center" class="tabletitle">�û���</td>
		<td bgcolor="#FFFFFF" align="left">
			${luser.TEACHERNAME}
		</td>
	</tr>
	<tr align="center" valign="middle" height="28">
		<td align="center" class="tabletitle">��ɫ:</td>
		<td bgcolor="#FFFFFF" align="left">
			<SELECT NAME="ltype">
				<s:if test="roleList!=null">
				<s:iterator value="roleList">	
					<OPTION VALUE="${ROLE_ID}" >${ROLE_NAME}</OPTION>
				</s:iterator>
				</s:if>
			</SELECT>

		</td>
	</tr>
	<tr align="center" valign="middle" height="28">
	<td align="center" class="tabletitle"></td>
	<td bgcolor="#FFFFFF" align="left"><input type="submit" value="ȷ���޸�"/></td>
	</tr>
</table>
</form>
</body>
</html>