<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.List"%>
<%@ page import="edu.sms.entity.Student"%>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<!--
.STYLE1 {font-size: 24px}
.STYLE3 {font-size: x-large}
-->
table {
	width: 100%;
	margin: 0px auto;
	font: Georgia 11px;
	font-size: 12px;
	color: #333333;
	text-align: center;
	border-collapse: collapse; /*细线表格代码*/
}

table td {
	border: 1px solid #999; /*细线表格线条颜色*/
	height: 22px;
}

caption {
	text-align: center;
	font-size: 12px;
	font-weight: bold;
	margin: 0 auto;
}

tr.t1 td {
	background-color: #fff;
}

tr.t2 td {
	background-color: #eee;
}

tr.t3 td {
	background-color: #ccc;
}

th,tfoot tr td {
	font-weight: bold;
	text-align: center;
	background: #c5c5c5;
}

th {
	line-height: 30px;
	height: 30px;
}

tfoot tr td {
	background: #fff;
	line-height: 26px;
	height: 26px;
}

thead {
	border: 1px solid #999;
}

thead tr td {
	text-align: center;
}

#page {
	text-align: center;
	float: right;
}

#page a,#page a:visited {
	width: 60px;
	height: 22px;
	line-height: 22px;
	border: 1px black solid;
	display: block;
	float: left;
	margin: 0 3px;
	background: #c9c9c9;
	text-decoration: none;
}

#page a:hover {
	background: #c1c1c1;
	text-decoration: none;
}

.grayr {
	padding: 2px;
	font-size: 11px;
	background: #fff;
	float: right;
}

.grayr a {
	padding: 2px 5px;
	margin: 2px;
	color: #000;
	text-decoration: none;;
	border: 1px #c0c0c0 solid;
}

.grayr a:hover {
	color: #000;
	border: 1px orange solid;
}

.grayr a:active {
	color: #000;
	background: #99ffff
}

.grayr span.current {
	padding: 2px 5px;
	font-weight: bold;
	margin: 2px;
	color: #303030;
	background: #fff;
	border: 1px orange solid;
}

.grayr span.disabled {
	padding: 2px 5px;
	margin: 2px;
	color: #797979;
	background: #c1c1c1;
	border: 1px #c1c1c1 solid;
}
</style>
<title>企业化班级管理系统</title>
</head>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
	<script Charset="gbk" Type="Text/JavaScript" Language="JavaScript" >
	function checkLessonCode()
	{
		var ele=document.getElementById("lessonCode");
		var len=ele.value.length;
		
		 if(len==0)
		{
			alert("课程编号不能为空");
			return false;
		}
		else{
			return true;
		}
		
	}

	function checkLessonName()
	{
		var ele=document.getElementById("lessonName");
		var len=ele.value.length;
		 if(len==0)
		{

			alert("课程名称不能为空");
			return false;
		}else{
			return true;
		}
		

	}
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
		var ele=document.getElementById("password1");
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
		var password1=document.getElementById("password1").value;
		if (password==password1) {
			return true;
		}
		else{
			alert("两次密码不同，请重新提交");
			return false;
		}
	}
	function checkcmtform()
	{
		
		if(checkLessonCode()&&checkLessonName()&&checkPassword()&&checkPassword1()&& checkEqualPassword())
		{
			alert("提交成功");
			form1.submit();
			
		}
		else
		{
			alert("不能提交");
			
		}
	}
	</SCRIPT>

<body>
 
<form name="form1" action="<%=request.getContextPath() %>/lesson!edit.action" method="post">
<table border="1" cellspacing="1" cellpadding="2" class="bgtable" align="center" style="table-layout:fixed" width="100%">
	<TR  align="center">
		<TD width="45%">学生姓名</TD><td width="45%">学生加扣分情况</td><td width="10%">学生当前总分</td>
	</TR>	

	<%
	  List<Student> stuList=(List<Student>)request.getAttribute("studentList");
	  if(stuList!=null&&stuList.size()>0){
	  	for(int i=0;i<stuList.size();i++){
	  		if(Float.parseFloat(stuList.get(i).getStudentScore())<=70&&Float.parseFloat(stuList.get(i).getStudentScore())>60){
	  		

	 %>
	<TR  align="center" bgcolor="yellow">
		<TD>
		<a href="<%=request.getContextPath()%>/student!getStudentScore.action?stuNo=<%=stuList.get(i).getStuNo() %>"><%=stuList.get(i).getStuName() %></a></TD>
		<TD>
		<a href="<%=request.getContextPath()%>/student!getStudentSituation.action?stuNo=<%=stuList.get(i).getStuNo() %>">查询</a></TD>
		<TD><font size="3.5"><%=stuList.get(i).getStudentScore() %></TD>
	</TR>
	<% 	  
			}
			else if(Float.parseFloat(stuList.get(i).getStudentScore())<=60&&Float.parseFloat(stuList.get(i).getStudentScore())>50){
	  %>
	<TR  align="center" bgcolor="#00FFFF">
		<TD>
		<a href="<%=request.getContextPath()%>/student!getStudentScore.action?stuNo=<%=stuList.get(i).getStuNo() %>"><%=stuList.get(i).getStuName() %></a></TD>
		<TD>
		<a href="<%=request.getContextPath()%>/student!getStudentSituation.action?stuNo=<%=stuList.get(i).getStuNo() %>">查询</a></TD>
		<TD><font size="3.5"><%=stuList.get(i).getStudentScore() %></TD>
	</TR>
	<%		
			}else if(Float.parseFloat(stuList.get(i).getStudentScore())<=50){
	   %>
	 <TR  align="center" bgcolor="red">
		<TD>
		<a href="<%=request.getContextPath()%>/student!getStudentScore.action?stuNo=<%=stuList.get(i).getStuNo() %>"><%=stuList.get(i).getStuName() %></a></TD>
		<TD>
		<a href="<%=request.getContextPath()%>/student!getStudentSituation.action?stuNo=<%=stuList.get(i).getStuNo() %>">查询</a></TD>
		<TD><font size="3.5"><%=stuList.get(i).getStudentScore() %></TD>
	</TR>
	<%		
			}else{
	 %>   
	 <TR  align="center" >
		<TD>
		<a href="<%=request.getContextPath()%>/student!getStudentScore.action?stuNo=<%=stuList.get(i).getStuNo() %>"><%=stuList.get(i).getStuName() %></a></TD>
		<TD>
		<a href="<%=request.getContextPath()%>/student!getStudentSituation.action?stuNo=<%=stuList.get(i).getStuNo() %>">查询</a></TD>
		<TD><font size="3.5"><%=stuList.get(i).getStudentScore() %></TD>
	</TR>
	<%
			}
		}
	  }
	 %>
</table>
</form>
</body>


<SCRIPT LANGUAGE="JavaScript">


</SCRIPT>
</html>


