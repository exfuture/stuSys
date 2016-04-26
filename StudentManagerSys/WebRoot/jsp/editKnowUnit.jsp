<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ÐÞ¸ÄÖªÊ¶µ¥Ôª</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
function goBack()
{
	var url="knowledgeUnit!addKnowledgeUnit.action";
	window.location.href=url;
}
</script>
<body>
<form name="form1" action="<%=request.getContextPath() %>/knowledgeUnit!editKnowledgeUnit.action" method="post">
	<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">${knowledgeUnit.KNOWLEDGEUNITNAME}ÐÞ¸Ä</span>
			</td>
			<td >
				<input id="bu" type="button" value="·µ»Ø" onclick="goBack();">
			</td>
		</tr>
	</table>	
<br><br>
<input type="hidden" name="knowledgeUnitCode" value="<s:property value="knowledgeUnit.KNOWLEDGEUNITCODE"/>"/>
 <TABLE  id="t" width="80%" bgcolor="#55AAEE" align="center">  
	<TR align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle">ÖªÊ¶µ¥Ôª´úÂë</TD>
		<TD bgcolor="#FFFFFF" align="left"> 
			<INPUT TYPE="text" disabled maxLength=4 NAME="knowledgeUnit.KNOWLEDGEUNITCODE" id="knowledgeUnitCode" value="${knowledgeUnit.KNOWLEDGEUNITCODE }"/>
		</TD>
	</tr>
	<tr align="center" valign="middle" height="28">
		<TD  align="center" class="tabletitle">ÖªÊ¶µ¥ÔªÃû³Æ</TD>
		<TD  bgcolor="#FFFFFF" align="left">
			<INPUT TYPE="text" NAME="knowledgeUnit.KNOWLEDGEUNITNAME" id="name" value="${knowledgeUnit.KNOWLEDGEUNITNAME}"/>
		</TD>
	</TR>
	<tr align="center" valign="middle" height="28">
		<TD  align="center" class="tabletitle"></TD>
		<TD  bgcolor="#FFFFFF" align="left">
			<INPUT TYPE="submit" value="ÐÞ¸Ä" >
		</TD>
	</TR>
</TABLE>
</form>
</body>
</html>