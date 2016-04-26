<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="lgd.jy444.yxn.page.Page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教学质量评估系统</title>
</head>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
<s:action id="sys" name="sys"/>
<SCRIPT LANGUAGE="JavaScript">

function go(){

	if(check()){
		var pageNo = document.getElementById("pageno").value;		
		document.write("<form action='sys!queryRoles.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='pageNo' value='"+pageNo+"'");
		document.write("</form>");
		document.formx1.submit();
	}else{
		alert("您所输入的页码有误，请检查后重新输入");
		}
 }
function addRole(){

	var str='<table id="t" width="80%" bgcolor="#55AAEE" align="center">'
		+'<tr align="center" valign="middle" height="28"><TD align="center" class="tabletitle"> 角色ID</TD><TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="role.ROLE_ID" id="roleid"></TD></TR>'
		+'<tr align="center" valign="middle" height="28"><TD align="center" class="tabletitle">角色名称</TD><TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="role.ROLE_NAME" id="rolename"></TD></TR>'
		+'<tr align="center" valign="middle" height="28"><td align="center" class="tabletitle"></td><td bgcolor="#FFFFFF" align="center"><input type="button" value="提交" onclick="checkcmtform();"/></td></tr></TABLE>'
     document.getElementById('b').insertAdjacentHTML("beforeBegin",str);
	 document.getElementById("bu").disabled=true;
	 document.getElementById("bu1").disabled=false;
}
function checkRoleId()
{
	var ele=document.getElementById("roleid");
	var len=ele.value.length;
	
	 if(len==0)
	{
		alert("角色ID不能为空");
		return false;
	}
	else{
		return true;
	}
	
}

function checkRoleName()
{
	var ele=document.getElementById("rolename");
	var len=ele.value.length;
	 if(len==0)
	{

		alert("角色名称不能为空");
		return false;
	}else{
		return true;
	}
}

function checkcmtform()
{
	
	if(checkRoleId()&&checkRoleName())
	{
		alert("提交成功");
		form1.submit();
		
	}
	else
	{
		alert("不能提交");
		
	}
}

function submitRole(){
	
	form1.submit();
}
function del(){
	document.getElementById("t").removeNode(true);
	document.getElementById("bu1").disabled=true;
	document.getElementById("bu").disabled=false;
	}	
 </SCRIPT>
<body>
<form name="form1" action="<%=request.getContextPath() %>/sys!addRole.action" method="post">
<table width="100%">

	<tr>
		<td  height="21" align="left" valign="middle">
			<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
			<span class="pagetitle">权限管理</span>
		</td>
		<td bgcolor="#FFFFFF" align="center"> 
 			<INPUT id="bu" TYPE="button" VALUE="添加新角色" ONCLICK="addRole();">
		</td>
		<td bgcolor="#FFFFFF"  align="center">
			<INPUT id="bu1" disabled TYPE="button" VALUE="撤销添加" ONCLICK="del();">
		</td>
	</tr>
</table>
<table>
 <tr>
	<td>

		
	</td>
 </tr>
</table>
<br id="b">
<table  width="80%" bgcolor="#55AAEE" align="center">
	<tr align="center" valign="middle" height="28">	
		<td align="center" class="tabletitle">角色编号</td>
		<td align="center" class="tabletitle">角色名称</td>
		<td align="center" class="tabletitle"></td>
		<td align="center" class="tabletitle"></td>
		<td align="center" class="tabletitle"></td>
	</tr>
	
	<s:if test="roleList!=null">
	<s:iterator value="roleList"status="j">			
	<tr >
		<td bgcolor="#FFFFFF" align="center">
			<s:property value="ROLE_ID"/>
		</td>
		<td bgcolor="#FFFFFF" align="center">
			<s:property value="ROLE_NAME"/>
		</td>
		<td  bgcolor="#FFFFFF" align="center">
			<a href="<%=request.getContextPath() %>/sys!addFunctionPage.action?role_id=<s:property value="ROLE_ID"/>">
				编辑权限
			</a>
		</td>		
		<td  bgcolor="#FFFFFF" align="center">
			<a href="<%=request.getContextPath() %>/sys!editRolePage.action?role_id=<s:property value="ROLE_ID"/>">
				修改角色名称
			</a>
		</td>	
		<td  bgcolor="#FFFFFF" align="center">
			<a href="<%=request.getContextPath() %>/sys!deleteRole.action?role_id=<s:property value="ROLE_ID"/>">
				删除
			</a>
		</td>		    
	</tr>
	</s:iterator>
	</s:if>
</table>

</form>
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
		 <td  nowrap><a href="<%=request.getContextPath() %>/sys!queryRoles.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">首页</FONT></a></td>
		 <td  nowrap><a href="<%=request.getContextPath() %>/sys!queryRoles.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">上页</FONT></a></td>
		<%} 
		  if(p.getPageNo()==p.getPageEnd()){  
		%>
          <td nowrap><FONT size="2" color="999999">下页</FONT></td>
 		<td nowrap><FONT size="2" color="999999">尾页</FONT></td>
	     <%} else{%>
	    <td nowrap><a href="<%=request.getContextPath() %>/sys!queryRoles.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">下页</FONT></a></td>
		<td nowrap><a href="<%=request.getContextPath() %>/sys!queryRoles.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">尾页</FONT></a></td>
		
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




</body>
</html>