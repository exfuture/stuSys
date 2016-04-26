<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>½ÌÑ§ÖÊÁ¿ÆÀ¹ÀÏµÍ³</title>
</head>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
<body>
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">¸ø${role.ROLE_NAME}±à¼­È¨ÏÞ</span>
			</td>
		</tr>
	</table>
<form action="<%=request.getContentType() %>/sys!addFunction.action" method="post">
<input type="hidden" name="role_id" value="${role.ROLE_ID }">

<table width="100%">
	<tr>
		<td width="80%">
		<td ><INPUT TYPE="submit" value="ÉèÖÃÈ¨ÏÞ"></td>
	</tr>
</table>

<table width="80%" bgcolor="#55AAEE" align="center">
	
	<s:iterator id="fl" value="functionList" status="i">
		<% int i=0; %>					
		<tr align="center" valign="middle" height="28" >
			<s:iterator  id="rf"value="rfList" status="j">	
			<s:if test="#fl.FUNCTION_ID.equals(#rf.FUNCTION_ID)">
			<td width=2% bgcolor="#FFFFFF" align="left">
				<input type="checkbox" name="lcheckbox" value="<s:property value="FUNCTION_ID"/>" checked/>
			</td>
			<% i++; %>
			</s:if>
			</s:iterator>
			<%if(i==0){ %>
			<td width=2% bgcolor="#FFFFFF" align="left">
				<input type="checkbox" name="lcheckbox" value="<s:property value="FUNCTION_ID"/>"/>
			</td>
			<%} %>
		
		
			<td bgcolor="#FFFFFF" align="center"><s:property value="NAME"/></td>
		</tr>

	</s:iterator>
</table>

</form>

</body>
</html>

</body>
</html>