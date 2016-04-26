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
<script language="Javascript"> 
	function checkAll(e, itemName) 
	{ 
	  var aa = document.getElementsByName(itemName); 
	  for (var i=0; i<aa.length; i++) 
	   aa[i].checked = e.checked; 
	} 
	function checkItem(e, allName) 
	{ 
	  var all = document.getElementsByName(allName)[0]; 
	  if(!e.checked) all.checked = false; 
	  else 
	  { 
	    var aa = document.getElementsByName(e.name); 
	    for (var i=0; i<aa.length; i++) 
	     if(!aa[i].checked) return; 
	    all.checked = true; 
	  } 
	} 

	function pingJia() {
		var lessonId =<s:property value="lesson.LESSONCODE"/>;

		document.write("<form action='/selfAssessment!queryAssessment.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='lessonCode' value='"
				+ lessonCode + "'");
		document.write("<input type='hidden' name='userno' value='" + userno
				+ "'");
		document.write("<input type='hidden' name='s' value='" + s + "'");
		document.write("</form>");
		document.formx1.submit();
	}

</script> 

<body>

	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">Í¬ÐÐÆÀ¼Û</span>
			</td>			
		</tr>
	</table>
	<br><br><br>
	<table width="80%" bgcolor="#55AAEE" align="center">
		<tr align="center" valign="middle" height="28">
			<td  align="center" class="tabletitle">
				¿Î³ÌÃû³Æ
			</td>	
			<td align="center" class="tabletitle">	
				²Ù×÷			
			</td>			    
		</tr>

		<s:if test="colleagueLessonList!=null">
		<s:iterator id="point"value="colleagueLessonList">			
		<tr >
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="lesson.LESSONNAME"/>
			</td>					
			<td bgcolor="#FFFFFF" align="center">
				<a href="<%=request.getContextPath()%>/colleagueAssessment!chosePoints.action?lessonId=<s:property value="lesson.LESSONCODE"/>">ÆÀ¼Û</a>
			</td> 
		</tr>
		</s:iterator>	
		</s:if>
	</table>

</body>
</html>