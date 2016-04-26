<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="lgd.jy444.yxn.page.Page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>½ÌÑ§ÖÊÁ¿ÆÀ¹ÀÏµÍ³</title>
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
		alert("ÄúËùÊäÈëµÄÒ³ÂëÓÐÎó£¬Çë¼ì²éºóÖØÐÂÊäÈë");
		}
 }
function addRole(){

	var str='<table id="t" width="80%" bgcolor="#55AAEE" align="center">'
		+'<tr align="center" valign="middle" height="28"><TD align="center" class="tabletitle"> ½ÇÉ«ID</TD><TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="role.ROLE_ID" id="roleid"></TD></TR>'
		+'<tr align="center" valign="middle" height="28"><TD align="center" class="tabletitle">½ÇÉ«Ãû³Æ</TD><TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="role.ROLE_NAME" id="rolename"></TD></TR>'
		+'<tr align="center" valign="middle" height="28"><td align="center" class="tabletitle"></td><td bgcolor="#FFFFFF" align="center"><input type="button" value="Ìá½»" onclick="checkcmtform();"/></td></tr></TABLE>'
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
		alert("½ÇÉ«ID²»ÄÜÎª¿Õ");
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

		alert("½ÇÉ«Ãû³Æ²»ÄÜÎª¿Õ");
		return false;
	}else{
		return true;
	}
}

function checkcmtform()
{
	
	if(checkRoleId()&&checkRoleName())
	{
		alert("Ìá½»³É¹¦");
		form1.submit();
		
	}
	else
	{
		alert("²»ÄÜÌá½»");
		
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
			<span class="pagetitle">È¨ÏÞ¹ÜÀí</span>
		</td>
		<td bgcolor="#FFFFFF" align="center"> 
 			<INPUT id="bu" TYPE="button" VALUE="Ìí¼ÓÐÂ½ÇÉ«" ONCLICK="addRole();">
		</td>
		<td bgcolor="#FFFFFF"  align="center">
			<INPUT id="bu1" disabled TYPE="button" VALUE="³·ÏúÌí¼Ó" ONCLICK="del();">
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
		<td align="center" class="tabletitle">½ÇÉ«±àºÅ</td>
		<td align="center" class="tabletitle">½ÇÉ«Ãû³Æ</td>
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
				±à¼­È¨ÏÞ
			</a>
		</td>		
		<td  bgcolor="#FFFFFF" align="center">
			<a href="<%=request.getContextPath() %>/sys!editRolePage.action?role_id=<s:property value="ROLE_ID"/>">
				ÐÞ¸Ä½ÇÉ«Ãû³Æ
			</a>
		</td>	
		<td  bgcolor="#FFFFFF" align="center">
			<a href="<%=request.getContextPath() %>/sys!deleteRole.action?role_id=<s:property value="ROLE_ID"/>">
				É¾³ý
			</a>
		</td>		    
	</tr>
	</s:iterator>
	</s:if>
</table>

</form>
<TABLE width="80%" align="center">
 	 <tr>	
       <td  ><FONT size="2">¹²Ìõ<s:property value="page.rowCount"/>¼ÇÂ¼</FONT></td>
          
        <td ><FONT size="2">µ±Ç°ÏÔÊ¾<span class="style2"><s:property value="page.beginShow"/>--<s:property value="page.endShow"/></span>Ìõ</FONT></td>
		<td  ><FONT size="2">×ªµ½<input type="text" size="2" name="pageNo" id="pageno"/>Ò³</FONT><input type="button" value="go" onclick="go();"/></td>

		<% 
			Page p=new Page();
			p=(Page)request.getAttribute("page");
			if(p.getPageNo()==1){		
		%>
 		<td  nowrap><FONT size="2" color="999999">Ê×Ò³</FONT></a></td>
          <td  nowrap><FONT size="2" color="999999">ÉÏÒ³</FONT></td>
   		<%} else{%>
		 <td  nowrap><a href="<%=request.getContextPath() %>/sys!queryRoles.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">Ê×Ò³</FONT></a></td>
		 <td  nowrap><a href="<%=request.getContextPath() %>/sys!queryRoles.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">ÉÏÒ³</FONT></a></td>
		<%} 
		  if(p.getPageNo()==p.getPageEnd()){  
		%>
          <td nowrap><FONT size="2" color="999999">ÏÂÒ³</FONT></td>
 		<td nowrap><FONT size="2" color="999999">Î²Ò³</FONT></td>
	     <%} else{%>
	    <td nowrap><a href="<%=request.getContextPath() %>/sys!queryRoles.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">ÏÂÒ³</FONT></a></td>
		<td nowrap><a href="<%=request.getContextPath() %>/sys!queryRoles.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">Î²Ò³</FONT></a></td>
		
		<%} %>
         <td nowrap align="right" ><FONT size="2">¹²<s:property value="page.pageCount"/>Ò³</FONT></td>
       <td nowrap align="right" width="40"><FONT size="2">µÚ<s:property value="page.pageNo"/>Ò³</FONT></td>						
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