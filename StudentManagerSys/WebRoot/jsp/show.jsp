<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" cellspacing="1" cellpadding="2" class="bgtable" align="center" style="table-layout:fixed">
	<TR  align="center">
		<TD>ÖªÊ¶µã±àºÅ</TD>
		<TD>ÖªÊ¶µãÃû³Æ</TD>
		<TD>×î´óÑ§Ê±</TD>
		<TD>×îÐ¡Ñ§Ê±</TD>
	</TR>	
<s:iterator value="knowPointList" status="i">
	<TR  align="center">
		<TD><s:property value="KNOWLEDGEPOINTCODE" /></TD>
		<TD><s:property value="KNOWLEDGEPOINTNAME" /></TD>
		<TD><s:property value="MAXHOURS" /></TD>
		<TD><s:property value="MINHOURS" /></TD>
	</TR>
	</s:iterator>
	
</table>

</body>
</html>