<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="lgd.jy444.yxn.page.Page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
<s:action id="sys" name="sys"/>
<SCRIPT LANGUAGE="JavaScript">

function go(){

	if(check()){
		var pageNo = document.getElementById("pageno").value;		
		document.write("<form action='sys!queryUsers.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='pageNo' value='"+pageNo+"'");
		document.write("</form>");
		document.formx1.submit();
	}else{
		alert("ÄúËùÊäÈëµÄÒ³ÂëÓÐÎó£¬Çë¼ì²éºóÖØÐÂÊäÈë");
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
function addLUser(){

	var str='<table id="t" width="80%" bgcolor="#55AAEE" align="center">'
		+'<tr align="center" valign="middle" height="28">	'
		+'<td align="center" class="tabletitle">ÓÃ»§Ãû</td>'
		+'<td bgcolor="#FFFFFF" align="center"><input type="text" name="luser.username"/></td></tr>'
		+'<tr align="center" valign="middle" height="28">'
		+'<td align="center" class="tabletitle">ÃÜÂë</td>'
		+'<td bgcolor="#FFFFFF" align="center">'
		+'<input type="text" name="luser.password"/></td></tr>'
		+'<tr align="center" valign="middle" height="28">'
		+'<td align="center" class="tabletitle">ÓÃ»§ÀàÐÍ</td>'
		+'<td bgcolor="#FFFFFF" align="center">'
		+'<SELECT NAME="luser.ltype"><s:if test="roleList!=null"><s:iterator value="roleList">'
		+'<OPTION VALUE="${ROLE_ID}" >${ROLE_NAME}</s:iterator></s:if></SELECT></td></tr>'
		+'<tr align="center" valign="middle" height="28"><td align="center" class="tabletitle"></td><td bgcolor="#FFFFFF" align="center">'
		+'<INPUT TYPE="button" VALUE="Ìí¼Ó" ONCLICK="submitLUser();"></td></tr></table>'
	 document.getElementById('b').insertAdjacentHTML("beforeBegin",str);
	document.getElementById("bu").disabled=true;
	document.getElementById("bu1").disabled=false;
}


function submitLUser(){
	
	form1.submit();
	
}
function del(){
	document.getElementById("t").removeNode(true);
	document.getElementById("bu1").disabled=true;
	document.getElementById("bu").disabled=false;
	}		
 </SCRIPT>
<body>
<form name="form1" action="<%=request.getContextPath() %>/sys!addUser.action">
	<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">ÓÃ»§ÕËºÅ</span>
			</td>
			<td bgcolor="#FFFFFF" align="center"> <input id="bu" type="button" value="ÐÂ½¨ÓÃ»§" 
			onclick="addLUser();"/></td>
			<td bgcolor="#FFFFFF" align="center">
			<input id="bu1" disabled type="button" value="³·ÏúÌí¼Ó" onclick="del();"/>
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
		<td align="center" class="tabletitle">ÓÃ»§Ãû</td>
		<td align="center" class="tabletitle">½ÇÉ«</td>
	    <td align="center" class="tabletitle"></td>
		<td align="center" class="tabletitle"></td>
	</tr>
	
	<s:if test="pageUserList!=null">
	<s:iterator value="pageUserList"status="j">			
	<tr >
		<td  bgcolor="#FFFFFF" align="center">
			<s:property value="TEACHERNAME"/>
		</td>
		<td  bgcolor="#FFFFFF" align="center">
			<s:property value="role.ROLE_NAME"/>
		</td>		
		<td  bgcolor="#FFFFFF" align="center">
			<a href="<%=request.getContextPath() %>/sys!editPage.action?username=<s:property value="USERNO"/>">ÐÞ¸Ä½ÇÉ«</a>
		</td>
		<td  bgcolor="#FFFFFF" align="center">
			<a href="<%=request.getContextPath() %>/sys!delete.action?username=<s:property value="USERNO"/>">
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
		 <td  nowrap><a href="<%=request.getContextPath() %>/sys!queryUsers.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">Ê×Ò³</FONT></a></td>
		 <td  nowrap><a href="<%=request.getContextPath() %>/sys!queryUsers.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">ÉÏÒ³</FONT></a></td>
		<%} 
		  if(p.getPageNo()==p.getPageEnd()){  
		%>
          <td nowrap><FONT size="2" color="999999">ÏÂÒ³</FONT></td>
 		<td nowrap><FONT size="2" color="999999">Î²Ò³</FONT></td>
	     <%} else{%>
	    <td nowrap><a href="<%=request.getContextPath() %>/sys!queryUsers.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">ÏÂÒ³</FONT></a></td>
		<td nowrap><a href="<%=request.getContextPath() %>/sys!queryUsers.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">Î²Ò³</FONT></a></td>
		
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