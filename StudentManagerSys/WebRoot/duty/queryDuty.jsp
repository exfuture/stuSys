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
			document.write("<form action='student!queryDuty1.action' method='post' name=formx1 style='display:none'>");
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
	function find_by_lessonName(){
		var lessonName = document.all.lessonName.value;
		var contextPath=document.all.contextPath.value;
		document.write("<form action='knowledgeUnit!queryLesson.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='lessonName' value='"+encodeURI(encodeURI(lessonName))+"'");
		document.write("</form>");
		document.formx1.submit();
		}
	
	function findall(){
		var typeCode = document.all.typeCode.value;
		var contextPath=document.all.contextPath.value;
		document.write("<form action='knowledgeUnit!queryAllLessons.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='typeCode' value='"+typeCode+"'");
		document.write("</form>");
		document.formx1.submit();
		}
</SCRIPT>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<style>
BODY {
background: url('<%=request.getContextPath() %>/duty/images/back.gif') repeat-x;

}
</style></HEAD>
<BODY BGCOLOR=#FFFFFF topmargin="0" leftmargin="0" marginheight=0 marginwidth=0 rightmargin=0 bottommargin=0">
<TABLE WIDTH=1250 BORDER=0 CELLPADDING=0 CELLSPACING=0>
	<TR>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=254 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=6 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=131 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=71 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=74 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=78 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=75 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=74 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=12 HEIGHT=1></TD>
	</TR>
	<TR>
		<TD COLSPAN=3 ROWSPAN=2>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_01.jpg" width="391" height="159"></TD>
		<TD COLSPAN=6>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_02.gif" width="384" height="71"></TD>
	</TR>
	<TR>
		<TD>
			<a href="<%=request.getContextPath() %>/duty/queryDuty1.jsp">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_03_conew1.gif" border="0" width="71" height="88"></a></TD>
		<!-- 
		<TD>
			<a href="<%=request.getContextPath() %>/duty/index.html">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_04.gif" border="0" width="74" height="88"></a></TD>
		<TD>
			<a href="index.html">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_05.gif" border="0" width="78" height="88"></a></TD>
		<TD>
			<a href="index.html">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_06.gif" border="0" width="75" height="88"></a></TD>
		<TD COLSPAN=2>
			<a href="index.html">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_07.gif" border="0" width="86" height="88"></a></TD>
	</TR>
	 -->
	<TR>
		<TD ROWSPAN=2 bgcolor="#E9E9E9" valign="top">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_08.jpg" width="254" height="441"></TD>
		<TD COLSPAN=8>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_09.gif" width="521" height="21"></TD>
	</TR>
	<TR>
		<TD background="<%=request.getContextPath() %>/duty/images/index_10.gif">
			&nbsp;</TD>
		<TD WIDTH=503 HEIGHT=420 COLSPAN=6 BGCOLOR=#FFFFFF valign="top">
	<form name="form1" action="<%=request.getContextPath() %>/student!queryDuty.action" method="post">
<input type=hidden name=contextPath value="<%=request.getContextPath() %>" />
<input type="hidden" value="${page.pageEnd }" id="pageEnd"/>
<input type="hidden" value="${page.pageOne }" id="pageOne"/>	
<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">	 
           <td width="120">          	 
				Ñ¡ÔñÈÕÆÚ<input type="text" id="cDate" name="cDate"  onClick="WdatePicker()"> <font color=red>µãÎÒµ¯³öÈÕÆÚ¿Ø¼þ</font>
     	   </td>
     	   <td width="120">          	 
           		<select name="queryClassNo" size="1" " style="width:120px"><option value="0"> Ñ¡Ôñ°à¼¶ </option>                             
                          <option value="1102"> 2011¼¶3+2 </option> 
                          <option value="1201"> 2012¼¶´ó×¨ </option> 
                          <option value="1202"> 2012¼¶3+2 </option> 
                          <option value="1203"> 2012¼¶ÖÐ×¨ </option> 
                          <option value="1301"> 2013¼¶´ó×¨ </option> 
                          <option value="1302"> 2013¼¶3+2 </option> 
                          <option value="1303"> 2013¼¶ÖÐ×¨</option>         
                </select>  
     	   </td>
     	   <td width="120">          	 
           		<select name="queryTeacherName" size="1" " style="width:120px"><option value="0"> Ñ¡Ôñ½ÌÊ¦ </option>                             
					<option value="³ÂÓñÍ¤"> ³ÂÓñÍ¤ </option>
					<option value="¿×Ñ©´¨"> ¿×Ñ©´¨ </option>
					<option value="ÕÅÀö»ª"> ÕÅÀö»ª </option>
					<option value="ÀîÏþÈã"> ÀîÏþÈã </option>
					<option value="±¦É½"> ±¦É½ </option>
					<option value="Ô¬¸£»ª"> Ô¬¸£»ª </option>
					<option value="Áõ³©"> Áõ³© </option>
					<option value="ÍõÁ¦"> ÍõÁ¦ </option>
					<option value="¸ßÍÞ"> ¸ßÍÞ </option>
					<option value="ÀîÇ¿"> ÀîÇ¿ </option>
					<option value="ÀîÐã·Ò"> ÀîÐã·Ò </option>
					<option value="ÍõÓñ»ª"> ÍõÓñ»ª </option>
					<option value="ºú´ºÏ¼"> ºú´ºÏ¼ </option>
					<option value="ÈøÈÊ¸ßÍÞ"> ÈøÈÊ¸ßÍÞ </option>
					<option value="¸ßË´ÄÐ"> ¸ßË´ÄÐ </option>
					<option value="ÊæÃÈ"> ÊæÃÈ </option>
					<option value="½ªÑÞÀö"> ½ªÑÞÀö </option>
					<option value="ÎÚÈÊËþÄÈ"> ÎÚÈÊËþÄÈ </option>
					<option value="ÖÜÐãÃô"> ÖÜÐãÃô </option>
					<option value="Òó»Û"> Òó»Û </option>
					<option value="ËÎ¿üÓÂ"> ËÎ¿üÓÂ </option>
					<option value="ÕÅÑ§³¬"> ÕÅÑ§³¬ </option>
					<option value="µË¸£¹â"> µË¸£¹â</option>
					<option value="ÀîÈº"> ÀîÈº </option>
					<option value="Àî´«Åô"> Àî´«Åô </option>
					<option value="Îâ³±Âå÷"> Îâ³±Âå÷ </option>
					<option value="´ÞÑÞÃô"> ´ÞÑÞÃô </option>
					<option value="Îâéª"> Îâéª</option>
					<option value="ÎºÀ´"> ÎºÀ´ </option>
					<option value="ÑîÐÂÄê"> ÑîÐÂÄê </option>
					<option value="³Â¹úÇ¿"> ³Â¹úÇ¿ </option>
					
                </select>  
     	   </td>
     	   <td>
     	        <input type="submit" value="²éÑ¯"/>
           </td>
		</tr>
	</table>
	<table border="1" cellspacing="1" cellpadding="2" class="bgtable" align="center" style="table-layout:fixed" width="100%">
	<TR  align="center">
		<TD >Ñ§ÆÚ</TD><td >Öµ°àÈË</td><td >Öµ°àÈÕÆÚ</td><TD >°à¼¶</TD><td > Ó¦¸Ã³öÇÚÈËÊý</td><td >Êµ¼Ê³öÇÚÈËÊý</td>
		<TD > Ñ¡ÐÞÈËÊý</TD><td >ÊÂ¼ÙÈËÊý</td><td >²¡¼ÙÈËÊý</td><TD >ÎÞ¹ÊÈ±ÇÚÈËÊý</TD><td >  È±ÇÚÈËÐÕÃû</td><td >¼ÍÂÉÇë¿ö</td>
		<TD >ÎÀÉúÇé¿ö</TD><td > °à¼¶»¹ÊÇ»ú·¿</td><td>ÌîÐ´Ê±¼ä</td>
	</TR>	
<s:if test="classDutyQueryList==null||classDutyQueryList.size()==0"></s:if>

<s:else>
<s:iterator value="classDutyQueryList" status="i">
	<TR  align="center">
      <td><s:property value="term" /></td><td><s:property value="dutyPerson" /></td><td><s:property value="dutyDate" /></td>
      <td><s:property value="className" /></td><td><s:property value="ycq" /></td><td><s:property value="scq" /></td>
      <td><s:property value="xx" /></td><td><s:property value="sj" /></td><td><s:property value="bj" /></td>
      <td><s:property value="wgqq" /></td><td><s:property value="wgqqxm" /></td><td><s:property value="jl" /></td>
      <td><s:property value="ws" /></td><td><s:property value="bjorjf" /></td><td><s:property value="txsj" /></td>
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
			if(p.getPageNo()==1){		
		%>
 		<td  nowrap><FONT size="2" color="999999">Ê×Ò³</FONT></a></td>
          <td  nowrap><FONT size="2" color="999999">ÉÏÒ³</FONT></td>
   		<%} else{%>
		 <td  nowrap><a href="<%=request.getContextPath() %>/student!queryDuty1.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">Ê×Ò³</FONT></a></td>
		 <td  nowrap><a href="<%=request.getContextPath() %>/student!queryDuty1.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">ÉÏÒ³</FONT></a></td>
		<%} 
		  if(p.getPageNo()==p.getPageEnd()){  
		%>
          <td nowrap><FONT size="2" color="999999">ÏÂÒ³</FONT></td>
 		<td nowrap><FONT size="2" color="999999">Î²Ò³</FONT></td>
	     <%} else{%>
	    <td nowrap><a href="<%=request.getContextPath() %>/student!queryDuty1.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">ÏÂÒ³</FONT></a></td>
		<td nowrap><a href="<%=request.getContextPath() %>/student!queryDuty1.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">Î²Ò³</FONT></a></td>
		
		<%} %>
         <td nowrap align="right" ><FONT size="2">¹²<s:property value="page.pageCount"/>Ò³</FONT></td>
       <td nowrap align="right" width="40"><FONT size="2">µÚ<s:property value="page.pageNo"/>Ò³</FONT></td>						
	</tr>
	<tr>
		<td colspan="12"  nowrap>
		</td>
	</tr>		
</TABLE>
	</form>
       </TD>
		<TD background="images/index_12.gif">
			&nbsp;</TD>
	</TR>
</TABLE>


<!-- End ImageReady Slices -->
</BODY>
</html>