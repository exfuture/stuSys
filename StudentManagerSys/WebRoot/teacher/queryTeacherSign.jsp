<%@ page language="java" contentType="text/html; charset=gbk" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="edu.sms.page.Page"%>
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>查询值班情况</title>
</head>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
<script Charset="gbk" Type="Text/JavaScript" Language="JavaScript" >
	
	function go(){
		
		if(check()){
			var pageNo = document.getElementById("pageno").value;		
			document.write("<form action='student!querySignDay1.action' method='post' name=formx1 style='display:none'>");
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
</SCRIPT>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<style>
</style></HEAD>
<BODY BGCOLOR=#FFFFFF topmargin="0" leftmargin="0" marginheight=0 marginwidth=0 rightmargin=0 bottommargin=0">
<TABLE WIDTH=1250 BORDER=0 CELLPADDING=0 CELLSPACING=0>
	<form name="form1" action="<%=request.getContextPath() %>/teacher!querySignDay.action" method="post">
<input type=hidden name=contextPath value="<%=request.getContextPath() %>" />
<input type="hidden" value="${page.pageEnd }" id="pageEnd"/>
<input type="hidden" value="${page.pageOne }" id="pageOne"/>	
<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">	 
           <td width="120">          	 
				选择日期<input type="text" id="cDate" name="cDate"  onClick="WdatePicker()"> <font color=red>点我弹出日期控件</font>
     	   </td>
     	   <td>
     	        <input type="submit" value="查询"/>
           </td>
		</tr>
	</table>
	<table border="1" cellspacing="1" cellpadding="2" class="bgtable" align="center" style="table-layout:fixed" width="100%">
	<TR  align="center">
		<TD >学期</TD><td >教师</td><TD >签到日期</TD><td>签到时间</td>
	</TR>	
<s:if test="teacherSignInDayList==null||teacherSignInDayList.size()==0"></s:if>

<s:else>
<s:iterator value="teacherSignInDayList" status="i">
	<TR  align="center">
      <td><s:property value="term" /></td>
      <td><s:property value="teacherNo" /></td>
      <td><s:property value="signDay" /></td>
      <td><s:property value="signTime" /></td>
	</TR>
	</s:iterator>
</s:else>	
</table>
<TABLE width="100%" align="center">
 	 <tr>	
       <td><FONT size="2">共条<s:property value="page.rowCount"/>记录</FONT></td>
          
        <td><FONT size="2">当前显示<span class="style2"><s:property value="page.beginShow"/>--<s:property value="page.endShow"/></span>条</FONT></td>
	<!--  <td><FONT size="2">转到<input type="text" size="2" name="pageNo" id="pageno"/>页</FONT><input type="button" value="go" onclick="go();"/></td>
-->	
		<% 
			Page p=new Page();
			p=(Page)request.getAttribute("page");
			if(p!=null){
				if(p.getPageNo()==1){		
				%>
		 		<td  nowrap><FONT size="2" color="999999">首页</FONT></a></td>
		          <td  nowrap><FONT size="2" color="999999">上页</FONT></td>
		   		<%} else{%>
				 <td  nowrap><a href="<%=request.getContextPath() %>/teacher!querySignDay1.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">首页</FONT></a></td>
				 <td  nowrap><a href="<%=request.getContextPath() %>/teacher!querySignDay1.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">上页</FONT></a></td>
				<%} 
				  if(p.getPageNo()==p.getPageEnd()){  
				%>
		          <td nowrap><FONT size="2" color="999999">下页</FONT></td>
		 		<td nowrap><FONT size="2" color="999999">尾页</FONT></td>
			     <%} else{%>
			    <td nowrap><a href="<%=request.getContextPath() %>/teacher!querySignDay1.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">下页</FONT></a></td>
				<td nowrap><a href="<%=request.getContextPath() %>/teacher!querySignDay1.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">尾页</FONT></a></td>
				
				<%} %>
         <td nowrap align="right" ><FONT size="2">共<s:property value="page.pageCount"/>页</FONT></td>
       <td nowrap align="right" width="40"><FONT size="2">第<s:property value="page.pageNo"/>页</FONT></td>		
       <%} %>				
	</tr>
	<tr>
		<td colspan="12"  nowrap>
		</td>
	</tr>		
</TABLE>
	</form>


<!-- End ImageReady Slices -->
</BODY>
</html>