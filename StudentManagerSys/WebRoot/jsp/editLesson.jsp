<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>��ѧ��������ϵͳ</title>
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
			alert("�γ̱�Ų���Ϊ��");
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

			alert("�γ����Ʋ���Ϊ��");
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

			alert("���벻��Ϊ��");
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

			alert("�������ظ�����");
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
			alert("�������벻ͬ���������ύ");
			return false;
		}
	}
	function checkcmtform()
	{
		
		if(checkLessonCode()&&checkLessonName()&&checkPassword()&&checkPassword1()&& checkEqualPassword())
		{
			alert("�ύ�ɹ�");
			form1.submit();
			
		}
		else
		{
			alert("�����ύ");
			
		}
	}
	</SCRIPT>

<body>
 
<form name="form1" action="<%=request.getContextPath() %>/lesson!edit.action" method="post">
<input type="hidden" name="lessonCode" value="<s:property value="lessonCode"/>"/>
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">�γ̹���&nbsp;>&nbsp;�޸Ŀγ�</span>
			</td>			
		</tr>
	</table> 

<TABLE  width="80%" bgcolor="#55AAEE" align="center">  
	<TR align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle">�γ̴���</TD>
		<TD bgcolor="#FFFFFF" align="left"> 
			<INPUT TYPE="text" disabled maxLength=4 NAME="lesson.code" id="lessonCode" value="${lessonCode}"/>
		</TD>
	</tr>
	<tr align="center" valign="middle" height="28">
		<TD  align="center" class="tabletitle">�γ���</TD>
		<TD  bgcolor="#FFFFFF" align="left">
			<INPUT TYPE="text" NAME="lesson.name" id="lessonName" value="${lesson.name}"/>
		</TD>
	</TR>
	<tr align="center" valign="middle" height="28">
		<TD  align="center" class="tabletitle">�γ����</TD>
		<TD bgcolor="#FFFFFF" align="left">
			<SELECT NAME="lesson.typecode">
			<OPTION VALUE="${lesson.typecode}" selected>${lesson.lessonType.typeName}</option>
			<s:iterator value="lessonTypeList">	
				<OPTION VALUE="${typeCode}">${typeName}</option>
			</s:iterator>
			</SELECT>
		</TD>
	</TR>
	<tr align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle">����</TD>
		<TD bgcolor="#FFFFFF" align="left">
		
			<SELECT NAME="lesson.liberalscience">
				<OPTION VALUE="${lesson.liberalscience}" selected>${lesson.liberalscienceName}</option>
				<OPTION VALUE="1">�Ŀ�</option>
				<OPTION VALUE="2">���</option>
			</SELECT>
		</TD>
	</TR>
	<tr align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle">����</TD>
		<TD  bgcolor="#FFFFFF" align="left">
			<INPUT TYPE="password" name="lesson.password"  id="password1"> 
		</TD>
	</TR>
	<tr height="21" width="50%">
		<TD align="center" class="tabletitle">�ظ���������</TD>
		<TD bgcolor="#FFFFFF" align="left">
			<INPUT TYPE="password"  id="password">
		</TD>
	</TR>
	<tr align="center" valign="middle" height="28">
		<TD  align="center" class="tabletitle"></TD>
		<TD  bgcolor="#FFFFFF" align="left">
			<INPUT TYPE="button" value="�޸�" onclick="checkcmtform();">
		</TD>
	</TR>
</TABLE>
</form>
</body>


<SCRIPT LANGUAGE="JavaScript">


</SCRIPT>
</html>


