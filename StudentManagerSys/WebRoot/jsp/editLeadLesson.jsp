<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>½ÌÑ§ÖÊÁ¿ÆÀ¹ÀÏµÍ³</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="<%=request.getContentType() %>/leadLesson!addLeadLessons.action" method="post">
<input type="hidden" name="lessonCode" value="${lesson.code}">
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">¸ø${lesson.name}Ìí¼ÓÇ°µ¼¿Î</span>
			</td>		
		</tr>
	</table>

<table width="100%">
	<tr>
		<td width="80%">
		<td ><INPUT TYPE="submit" value="ÉèÖÃÇ°µ¼¿Î"></td>
	</tr>
</table>
<table width="80%" bgcolor="#55AAEE" align="center">
	<s:if test="leadList!=null">
	<s:iterator id="l" value="leadList" status="i">				
		<tr align="center" valign="middle" height="28">	
			<td width=2% bgcolor="#FFFFFF" align="center" >
				<input type="checkbox" name="lcheckbox" value="<s:property value="code"/>" checked/>
			</td>	
			<td bgcolor="#FFFFFF" align="center"><s:property value="name"/></td>
		</tr>
	</s:iterator>
	</s:if>
	<s:if test="lList!=null">
	<s:iterator id="l" value="lList" status="i">
				
		<tr align="center" valign="middle" height="28">
			
			<td width="2%" bgcolor="#FFFFFF" align="center">
				<input type="checkbox" name="lcheckbox" value="<s:property value="code"/>" />
			</td>	
			<td bgcolor="#FFFFFF" align="center"><s:property value="name"/></td>
		</tr>

	</s:iterator>
	</s:if>
</table>

</form>

</body>
</html>

</body>
</html>