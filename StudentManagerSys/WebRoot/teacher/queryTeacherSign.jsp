<%@ page language="java" contentType="text/html; charset=gbk" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="edu.sms.page.Page"%>
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>²éÑ¯Öµ°àÇé¿ö</title>
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
				Ñ¡ÔñÈÕÆÚ<input type="text" id="cDate" name="cDate"  onClick="WdatePicker()"> <font color=red>µãÎÒµ¯³öÈÕÆÚ¿Ø¼þ</font>
     	   </td>
     	   <td>
     	        <input type="submit" value="²éÑ¯"/>
           </td>
		</tr>
	</table>
	<table border="1" cellspacing="1" cellpadding="2" class="bgtable" align="center" style="table-layout:fixed" width="100%">
	<TR  align="center">
		<TD >Ñ§ÆÚ</TD><td >½ÌÊ¦</td><TD >Ç©µ½ÈÕÆÚ</TD><td>Ç©µ½Ê±¼ä</td>
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
       <td><FONT size="2">¹²Ìõ<s:property value="page.rowCount"/>¼ÇÂ¼</FONT></td>
          
        <td><FONT size="2">µ±Ç°ÏÔÊ¾<span class="style2"><s:property value="page.beginShow"/>--<s:property value="page.endShow"/></span>Ìõ</FONT></td>
	<!--  <td><FONT size="2">×ªµ½<input type="text" size="2" name="pageNo" id="pageno"/>Ò³</FONT><input type="button" value="go" onclick="go();"/></td>
-->	
		<% 
			Page p=new Page();
			p=(Page)request.getAttribute("page");
			if(p!=null){
				if(p.getPageNo()==1){		
				%>
		 		<td  nowrap><FONT size="2" color="999999">Ê×Ò³</FONT></a></td>
		          <td  nowrap><FONT size="2" color="999999">ÉÏÒ³</FONT></td>
		   		<%} else{%>
				 <td  nowrap><a href="<%=request.getContextPath() %>/teacher!querySignDay1.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">Ê×Ò³</FONT></a></td>
				 <td  nowrap><a href="<%=request.getContextPath() %>/teacher!querySignDay1.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">ÉÏÒ³</FONT></a></td>
				<%} 
				  if(p.getPageNo()==p.getPageEnd()){  
				%>
		          <td nowrap><FONT size="2" color="999999">ÏÂÒ³</FONT></td>
		 		<td nowrap><FONT size="2" color="999999">Î²Ò³</FONT></td>
			     <%} else{%>
			    <td nowrap><a href="<%=request.getContextPath() %>/teacher!querySignDay1.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">ÏÂÒ³</FONT></a></td>
				<td nowrap><a href="<%=request.getContextPath() %>/teacher!querySignDay1.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">Î²Ò³</FONT></a></td>
				
				<%} %>
         <td nowrap align="right" ><FONT size="2">¹²<s:property value="page.pageCount"/>Ò³</FONT></td>
       <td nowrap align="right" width="40"><FONT size="2">µÚ<s:property value="page.pageNo"/>Ò³</FONT></td>		
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