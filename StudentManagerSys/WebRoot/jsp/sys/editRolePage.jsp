<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教学质量评估系统</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<SCRIPT LANGUAGE="JavaScript">
function checkname()
{
	var ele=document.getElementById("input1");
	var len=ele.value.length;
	if(len>4)
	{
		alert("您输入的姓名太长，请保持在10字以内。");
		return false;
	}
	else if(len==0)
	{
		alert("用户名不能为空");
		return false;
	}
	else{
		return true;
	}
	
}
function checkcmtform()
{
	if(checkname())
	{
		submit();
		return true;
	}
	else
	{
		return false;
	}
}
function submit(){
	
	form1.submit();
}

</SCRIPT>
<body>
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">修改角色名称</span>
			</td>
		</tr>
	</table>
<br><br><br>
<form name="form1" action="<%=request.getContextPath() %>/sys!editRole.action" method="post">
<input type="hidden" name="role.ROLE_ID" value="${role.ROLE_ID }">

<table  width="80%" bgcolor="#55AAEE" align="center">
	<!--标题行 -->


	<tr align="center" valign="middle" height="28">

		<td  align="center" class="tabletitle">新的角色名称</td>
		<td bgcolor="#FFFFFF" align="left">
			<input id="input1" type="text" name="role.ROLE_NAME"/>	 
		</td>
	</tr>
	<tr align="center" valign="middle" height="28">
		<td  align="center" class="tabletitle">新的角色名称</td>
		<td bgcolor="#FFFFFF" align="left"><input type="button" value="提交" onclick="checkcmtform();"/></td>
	</tr>
	
</table>
</form>
</body>
</html>