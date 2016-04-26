<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>评教页面</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<script Charset="gbk" Type="Text/JavaScript" Language="JavaScript">
	function calendarAssessment() {
		var lessonCode = document.all.lessonCode.value;
		var contextPath = document.all.contextPath.value;
		var userno = document.all.userno.value;
		var s = document.all.s.value;

		document.write("<form action='"
						+ contextPath
						+ "/selfAssessment!queryAssessment.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='lessonCode' value='"
				+ lessonCode + "'");
		document.write("<input type='hidden' name='userno' value='" + userno
				+ "'");
		document.write("<input type='hidden' name='s' value='" + s + "'");
		document.write("</form>");
		document.formx1.submit();
	}

	function fsubmit() {
		form1.submit();
	}
</SCRIPT>
<body>
	<form name="form1"
	action="<%=request.getContextPath()%>/selfAssessment!queryTeachingCalendar.action"
	method="post">
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">教师评价</span>
			</td>			
		</tr>
	</table>
	<br><br>
	<table width="80%" bgcolor="#55AAEE" align="center">
		<tr align="center" valign="middle" height="28">
			<td  align="center" class="tabletitle">
				课程名称
			</td>	
			<td align="center" class="tabletitle">	
				操作			
			</td>			    
		</tr>
		<s:if test="lessonList!=null">
		<s:iterator id="point"value="lessonList">			
		<tr >
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="LESSONNAME"/>
			</td>					
			<td bgcolor="#FFFFFF" align="center">
				<A title="欢迎评价" HREF="<%=request.getContextPath() %>/selfAssessment!queryTeachingCalendar.action?lessonCode=<s:property value="LESSONCODE"/>">进行评价</a>
		</td>    
		</tr>
		</s:iterator>	
		</s:if>
	</table>
</body>
</html>