<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>企业化学生管理系统</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<SCRIPT LANGUAGE="JavaScript">
function checkOldPassword()
{
	var ele=document.getElementById("input1");
	var len=ele.value.length;
    if(len==0)
	{
		alert("原密码不能为空");
		return false;
	}
	else{
		return true;
	}
	
}

function checkNewPassword()
{
	var ele=document.getElementById("input2");
	var len=ele.value.length;
    if(len==0)
	{
		alert("新密码不能为空");
		return false;
	}
	else{
		return true;
	}
	
}
function checkcmtform()
{
	if(checkOldPassword()&&checkNewPassword())
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
				<span class="pagetitle">修改密码</span>
			</td>
		</tr>
	</table>
<br><br><br>
<form name="form1" action="<%=request.getContextPath() %>/sys!changePassword.action" method="post">


<table  width="80%" bgcolor="#55AAEE" align="center">
	<!--标题行 -->


	<tr align="center" valign="middle" height="28">

		<td  align="center" class="tabletitle">请输入原密码</td>
		<td bgcolor="#FFFFFF" align="left">
			<input id="input1" type="password" name="oldPassword"/>	 
		</td>
	</tr>
	<tr align="center" valign="middle" height="28">
		<td  align="center" class="tabletitle">请输入新密码</td>
		<td bgcolor="#FFFFFF" align="left">
			<input id="input2" type="password" name="newPassword"/>	 
		</td>
		<td bgcolor="#FFFFFF" align="left"><input type="button" value="提交" onclick="checkcmtform();"/></td>
	</tr>
	
</table>
</form>
</body>
</html>