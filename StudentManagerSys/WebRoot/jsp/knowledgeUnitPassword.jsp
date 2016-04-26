<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
<head>
<script type="text/javascript">
function checkPassword()
{
	var ele=document.getElementById("password");
	var len=ele.value.length;
	 if(len==0)
	{

		alert("密码不能为空");
		return false;
	}else{
		return true;
	}
	

}
function checkPassword1()
{
	var ele=document.getElementById("repassword");
	var len=ele.value.length;
	 if(len==0)
	{

		alert("请输入重复密码");
		return false;
	}else{
		return true;
	}
	

}

function checkEqualPassword(){
	var password=document.getElementById("password").value;
	var repassword=document.getElementById("repassword").value;
	if (password==repassword) {
		return true;
	}
	else{
		alert("两次密码不同,请重新输入");
		return false;
	}
}
function checkcmtform()
{
	
	if(checkPassword()&&checkPassword1()&&checkEqualPassword())
	{
		alert("提交成功");
		form1.submit();
		
	}
	else
	{
		alert("不能提交");
		
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教学质量评估系统</title>
</head>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<body>
<form name="form1" action="<%=request.getContentType() %>/knowledgeUnit!addKnowledgeUnit.action" method="post">
<input type="hidden" name="lessonCode" value="${lesson.code}">
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">${lesson.name}密码验证</span>
			</td>		
		</tr>
	</table>
<br><br><br>
<table width="80%" bgcolor="#55AAEE" align="center">
	<tr align="center" valign="middle" height="28">	
		<td align="center" class="tabletitle">课程名:</td>
		<td bgcolor="#FFFFFF" align="left">${lesson.name}</td>
	</tr>
	<tr align="center" valign="middle" height="28">		
		<td align="center" class="tabletitle">请输入课程密码</td>
		<td bgcolor="#FFFFFF" align="left">
			<input type="password" name="password" id="password"/>
		</td>		
	</tr>
	<tr align="center" valign="middle" height="28">		
		<td align="center" class="tabletitle">请重复输入课程密码</td>
		<td bgcolor="#FFFFFF" align="left">
			<input type="password" name="repassword" id="repassword"/>
		</td>		
	</tr>
	<tr align="center" valign="middle" height="28">
		<td align="center" class="tabletitle"></td>
		<td bgcolor="#FFFFFF" align="left">
			<input type="button" value="提交"  onclick="checkcmtform();"/>
		</td>
	</tr>
</table>
</form>

</body>
</html>

</body>
</html>