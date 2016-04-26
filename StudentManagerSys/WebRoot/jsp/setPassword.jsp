<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教学质量评估系统设置密码</title>
 <LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">


alert("尊敬的老师，这是您第一次对该课程进行编辑，请及时修改密码。修改密码后，可以进行对课程内容的添加。");

function checkYpassword()
{
	var ele=document.getElementById("ypassword");
	var len=ele.value.length;
	 if(len==0)
	{

		alert("原密码不能为空");
		return false;
	}else{
		return true;
	}
}

function checkXpassword()
{
	var ele=document.getElementById("xpassword");
	var len=ele.value.length;
	 if(len==0)
	{

		alert("新密码不能为空");
		return false;
	}else{
		return true;
	}
}

function checkRepassword()
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

function checkXandYpassword(){

	var xpassword=document.getElementById("xpassword").value;
	var ypassword=document.getElementById("ypassword").value;
	if(xpassword==ypassword) {
		alert("新旧密码相同，请重新输入");
		return false;
	}
	else{
		return true;
	}
	
}
function checkEqualPassword(){
	var password=document.getElementById("xpassword").value;
	var repassword=document.getElementById("repassword").value;
	if (password==repassword) {
		return true;
	}
	else{
		alert("两次新密码不同,请重新输入");
		return false;
	}
}
function checkcmtform()
{

	if(checkYpassword()&& checkXpassword()&&checkRepassword()&&checkXandYpassword()&&checkEqualPassword())
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
<body>
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">为${lesson.name }设置新密码</span>
			</td>
					</tr>
	</table>
<br><br><br>
	<form name="form1" action="<%=request.getContextPath()%>/lesson!setPassword.action" method="post">
	<input type="hidden" name="lessonCode" value="${lesson.code }"/>
	<table width="80%" bgcolor="#55AAEE" align="center">
		<tr align="center" valign="middle" height="28" >
			<td align="center" class="tabletitle">课程名字：</td>
			<td bgcolor="#FFFFFF" align="left">${lesson.name }</td>
		</tr>
		<tr align="center" valign="middle" height="28">
			<td align="center" class="tabletitle">请输入原课程密码：</td>
			<td bgcolor="#FFFFFF" align="left">
				<input type="password" name="ypassword" id="ypassword"/>
			</td>
		</tr>
		<tr align="center" valign="middle" height="28">
			<td align="center" class="tabletitle">请输入新课程密码：</td>
			<td bgcolor="#FFFFFF" align="left">
				<input type="password" name="xpassword" id="xpassword"/>
			</td>
		</tr>
		<tr align="center" valign="middle" height="28" >
			<td align="center" class="tabletitle">请重复输入新课程密码</td>
			<td bgcolor="#FFFFFF" align="left">
				<input type="password" name="repassword" id="repassword"/>
			</td>		
		</tr>
		<tr align="center" valign="middle" height="28" >
			<td align="center" class="tabletitle"></td>
			<td bgcolor="#FFFFFF" align="left">
				<input type="button" value="提交" onclick="checkcmtform();"/>
			</td>
		</tr>								
	</table>
</form>
</body>
</html>