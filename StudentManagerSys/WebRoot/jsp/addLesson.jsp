<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="lgd.jy444.yxn.page.Page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
 <HEAD>
  <TITLE>教学质量评估系统添加课程</TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
  <LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</HEAD>
	<script Charset="gbk" Type="Text/JavaScript" Language="JavaScript" >

	 function go(){

			if(check()){
				var pageNo = document.getElementById("pageno").value;		
				document.write("<form action='lesson!addPage.action' method='post' name=formx1 style='display:none'>");
				document.write("<input type='hidden' name='pageNo' value='"+pageNo+"'");
				document.write("</form>");
				document.formx1.submit();
			}else{
				alert("您所输入的页码有误，请检查后重新输入");
				}
		 }
	 function check(){
		 var pageOne = document.getElementById("pageOne").value;	
		 var pageEnd = document.getElementById("pageEnd").value;	
		 var pageNo = document.getElementById("pageno").value;	
		 if(pageNo>=pageOne&&pageNo<=pageEnd){
				return true;
		 }else{
				return false;
				}
		
		 }
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
	
	function addLesson(){
	 var str='  <TABLE  id="t" width="80%" bgcolor="#55AAEE" align="center"> '
		 +'<TR align="center" valign="middle" height="28">'
		 +'<TD align="center" class="tabletitle">课程代码</TD>'
		 +'<TD bgcolor="#FFFFFF" align="left">'
		 +' <INPUT TYPE="left" maxLength=4 NAME="lesson.code" id="lessonCode"></TD>'
		 +'</tr>'
		 +'<tr align="center" valign="middle" height="28">'
		 +'<TD  align="center" class="tabletitle">课程名</TD>'
		 +'<TD  bgcolor="#FFFFFF" align="left">'
		 +'<INPUT TYPE="left" NAME="lesson.name" id="lessonName"></TD>'
		 +'</TR>'
		 +'<tr align="center" valign="middle" height="28">'
		 +'<TD  align="center" class="tabletitle">课程类别</TD>'
		 +'<TD  bgcolor="#FFFFFF" align="left">'
		 +'<SELECT NAME="lesson.typecode">'
		 +'<s:iterator value="lessonTypeList">'
		 +'	<OPTION VALUE="${typeCode}">${typeName}</option>'
		 +'</s:iterator></SELECT></TD></TR>'
		 +'<tr align="center" valign="middle" height="28">'
		 +'<TD  align="center" class="tabletitle">文理</TD>'
		 +'<TD bgcolor="#FFFFFF" align="left">'
		 +'<SELECT NAME="lesson.liberalscience">'
		 +'<OPTION VALUE="1">理科</option><OPTION VALUE="2">文科</option></SELECT></TD>'
		 +'</TR>'
		 +'<tr align="center" valign="middle" height="28"><TD align="center" class="tabletitle">密码</TD>'
		 +'<TD bgcolor="#FFFFFF" align="left"><INPUT TYPE="password" name="lesson.password" id="password" ></TD></TR>'
		 +'<tr align="center" valign="middle" height="28"><TD  align="center" class="tabletitle">请重复输入密码</TD>'
		 +'<TD  bgcolor="#FFFFFF" align="left"><INPUT TYPE="password" name="password" id="password1" ></TD></TR>'
		 +'<tr align="center" valign="middle" height="28"><TD align="center" class="tabletitle"></TD>'
		 +'<TD bgcolor="#FFFFFF" align="left"><INPUT TYPE="button" value="提交" onclick="checkcmtform();"></TD></TR></TABLE>'
		 
	document.getElementById('b').insertAdjacentHTML("beforeBegin",str);
	 document.getElementById("bu").disabled=true;
	 document.getElementById("bu1").disabled=false;
	}
	function del(){
		document.getElementById("t").removeNode(true);
		document.getElementById("bu1").disabled=true;
		document.getElementById("bu").disabled=false;
		}

	function find_by_lessonName(){
		var lessonName = document.all.lessonName.value;
		document.write("<form action='lesson!queryLesson.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='lessonName' value='"+encodeURI(encodeURI(lessonName))+"'");
		document.write("</form>");
		document.formx1.submit();
		}
	function findall(){
		var typeCode = document.all.typeCode.value;
		document.write("<form action='lesson!queryAllLessons.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='typeCode' value='"+typeCode+"'");
		document.write("</form>");
		document.formx1.submit();
		}
	function cform(){ 
		if(!confirm("是否要删除？")) 
		return false; 
	} 
	</SCRIPT>
 <form name="form1" action="<%=request.getContextPath() %>/lesson!add.action" method="post">
 <BODY>


 <s:action id="lesson" name="lesson"/>

	<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">课程设置</span>
			</td>
			
			<td bgcolor="#FFFFFF" align="center">
				<input id="bu" type="button" value="添加课程" onclick="addLesson();">
			</td>	
			 
			<td bgcolor="#FFFFFF" align="center">
				<input disabled id="bu1" type="button" value="撤销添加" onclick="del();">
			</td>	
		   <td width="120" align="center"><input name="lessonName" type="text" size="16" value="请输入课程名"></td>
           <td width=80 height="21"  valign="middle">
				<input type="button" value="查询" onClick="find_by_lessonName();" /> 
			</td>
			<td width="30"></td>
           <td width="120">
           	 
           		<select name="typeCode" size="1" " style="width:120px"><option value="0"> 按课程类别查询 </option>                             
                    <s:iterator value="lessonTypeList">
					<option value="${typeCode}">${typeName}</option>
					</s:iterator> 
                </select>  
			            
		   </td>
			<td width=80 height="21" valign="middle">
				<input type="button" value="查询" onClick="findall();" /> 
			 </td>

		</tr>
	</table>



	<table width="50%" align="center">
	 <tr>
		<td>
	
			
		</td>
	 </tr>
	</table>
	<br id="b">

	
	<table width="80%" bgcolor="#55AAEE" align="center">
		<tr align="center" valign="middle" height="28">	
		<td align="center" class="tabletitle">课程名称</td>
	    <td align="center" class="tabletitle">课程类别</td>
		<td align="center" class="tabletitle"></td>
		<td align="center" class="tabletitle"></td>
	</tr>
		<s:if test="lessonList!=null">
		<s:iterator id="point"value="lessonList ">			
		<tr >
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="name"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="lessonType.typeName"/>
			</td>
			<td  bgcolor="#FFFFFF" align="center">
				<a href="<%=request.getContextPath() %>/lesson!editPage.action?lessonCode=<s:property value="code"/>">
					修改
				</a>
			</td>	
			<td  bgcolor="#FFFFFF" align="center">
				<a href="<%=request.getContextPath() %>/lesson!delete.action?lessonCode=<s:property value="code"/>" onclick="return cform();">
					删除
				</a>
			</td>	
					    
		</tr>
		</s:iterator>
		</s:if>
	</table>

<TABLE width="80%" align="center">
 	 <tr>	
       <td  ><FONT size="2">共条<s:property value="page.rowCount"/>记录</FONT></td>
          
        <td ><FONT size="2">当前显示<span class="style2"><s:property value="page.beginShow"/>--<s:property value="page.endShow"/></span>条</FONT></td>
		<td  ><FONT size="2">转到<input type="text" size="2" name="pageNo" id="pageno"/>页</FONT><input type="button" value="go" onclick="go();"/></td>

		<% 
			Page p=new Page();
			p=(Page)request.getAttribute("page");
			if(p.getPageNo()==1){		
		%>
 		<td  nowrap><FONT size="2" color="999999">首页</FONT></a></td>
          <td  nowrap><FONT size="2" color="999999">上页</FONT></td>
   		<%} else{%>
		 <td  nowrap><a href="<%=request.getContextPath() %>/lesson!addPage.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">首页</FONT></a></td>
		 <td  nowrap><a href="<%=request.getContextPath() %>/lesson!addPage.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">上页</FONT></a></td>
		<%} 
		  if(p.getPageNo()==p.getPageEnd()){  
		%>
          <td nowrap><FONT size="2" color="999999">下页</FONT></td>
 		<td nowrap><FONT size="2" color="999999">尾页</FONT></td>
	     <%} else{%>
	    <td nowrap><a href="<%=request.getContextPath() %>/lesson!addPage.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">下页</FONT></a></td>
		<td nowrap><a href="<%=request.getContextPath() %>/lesson!addPage.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">尾页</FONT></a></td>
		
		<%} %>
         <td nowrap align="right" ><FONT size="2">共<s:property value="page.pageCount"/>页</FONT></td>
       <td nowrap align="right" width="40"><FONT size="2">第<s:property value="page.pageNo"/>页</FONT></td>						
	</tr>
	<tr>
		<td colspan="12"  nowrap>
		</td>
	</tr>		
</TABLE>
<input type="hidden" value="${page.pageEnd }" id="pageEnd"/>
<input type="hidden" value="${page.pageOne }" id="pageOne"/>

 </BODY>
 </form>
</HTML>