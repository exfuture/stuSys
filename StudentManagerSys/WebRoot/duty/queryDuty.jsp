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
			document.write("<form action='student!queryDuty1.action' method='post' name=formx1 style='display:none'>");
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
				选择日期<input type="text" id="cDate" name="cDate"  onClick="WdatePicker()"> <font color=red>点我弹出日期控件</font>
     	   </td>
     	   <td width="120">          	 
           		<select name="queryClassNo" size="1" " style="width:120px"><option value="0"> 选择班级 </option>                             
                          <option value="1102"> 2011级3+2 </option> 
                          <option value="1201"> 2012级大专 </option> 
                          <option value="1202"> 2012级3+2 </option> 
                          <option value="1203"> 2012级中专 </option> 
                          <option value="1301"> 2013级大专 </option> 
                          <option value="1302"> 2013级3+2 </option> 
                          <option value="1303"> 2013级中专</option>         
                </select>  
     	   </td>
     	   <td width="120">          	 
           		<select name="queryTeacherName" size="1" " style="width:120px"><option value="0"> 选择教师 </option>                             
					<option value="陈玉亭"> 陈玉亭 </option>
					<option value="孔雪川"> 孔雪川 </option>
					<option value="张丽华"> 张丽华 </option>
					<option value="李晓茹"> 李晓茹 </option>
					<option value="宝山"> 宝山 </option>
					<option value="袁福华"> 袁福华 </option>
					<option value="刘畅"> 刘畅 </option>
					<option value="王力"> 王力 </option>
					<option value="高娃"> 高娃 </option>
					<option value="李强"> 李强 </option>
					<option value="李秀芬"> 李秀芬 </option>
					<option value="王玉华"> 王玉华 </option>
					<option value="胡春霞"> 胡春霞 </option>
					<option value="萨仁高娃"> 萨仁高娃 </option>
					<option value="高舜男"> 高舜男 </option>
					<option value="舒萌"> 舒萌 </option>
					<option value="姜艳丽"> 姜艳丽 </option>
					<option value="乌仁塔娜"> 乌仁塔娜 </option>
					<option value="周秀敏"> 周秀敏 </option>
					<option value="殷慧"> 殷慧 </option>
					<option value="宋奎勇"> 宋奎勇 </option>
					<option value="张学超"> 张学超 </option>
					<option value="邓福光"> 邓福光</option>
					<option value="李群"> 李群 </option>
					<option value="李传鹏"> 李传鹏 </option>
					<option value="吴潮洛濛"> 吴潮洛濛 </option>
					<option value="崔艳敏"> 崔艳敏 </option>
					<option value="吴楠"> 吴楠</option>
					<option value="魏来"> 魏来 </option>
					<option value="杨新年"> 杨新年 </option>
					<option value="陈国强"> 陈国强 </option>
					
                </select>  
     	   </td>
     	   <td>
     	        <input type="submit" value="查询"/>
           </td>
		</tr>
	</table>
	<table border="1" cellspacing="1" cellpadding="2" class="bgtable" align="center" style="table-layout:fixed" width="100%">
	<TR  align="center">
		<TD >学期</TD><td >值班人</td><td >值班日期</td><TD >班级</TD><td > 应该出勤人数</td><td >实际出勤人数</td>
		<TD > 选修人数</TD><td >事假人数</td><td >病假人数</td><TD >无故缺勤人数</TD><td >  缺勤人姓名</td><td >纪律请况</td>
		<TD >卫生情况</TD><td > 班级还是机房</td><td>填写时间</td>
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
       <td><FONT size="2">共条<s:property value="page.rowCount"/>记录</FONT></td>
          
        <td><FONT size="2">当前显示<span class="style2"><s:property value="page.beginShow"/>--<s:property value="page.endShow"/></span>条</FONT></td>
	<!--  <td><FONT size="2">转到<input type="text" size="2" name="pageNo" id="pageno"/>页</FONT><input type="button" value="go" onclick="go();"/></td>
-->	
		<% 
			Page p=new Page();
			p=(Page)request.getAttribute("page");
			if(p.getPageNo()==1){		
		%>
 		<td  nowrap><FONT size="2" color="999999">首页</FONT></a></td>
          <td  nowrap><FONT size="2" color="999999">上页</FONT></td>
   		<%} else{%>
		 <td  nowrap><a href="<%=request.getContextPath() %>/student!queryDuty1.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">首页</FONT></a></td>
		 <td  nowrap><a href="<%=request.getContextPath() %>/student!queryDuty1.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">上页</FONT></a></td>
		<%} 
		  if(p.getPageNo()==p.getPageEnd()){  
		%>
          <td nowrap><FONT size="2" color="999999">下页</FONT></td>
 		<td nowrap><FONT size="2" color="999999">尾页</FONT></td>
	     <%} else{%>
	    <td nowrap><a href="<%=request.getContextPath() %>/student!queryDuty1.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">下页</FONT></a></td>
		<td nowrap><a href="<%=request.getContextPath() %>/student!queryDuty1.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">尾页</FONT></a></td>
		
		<%} %>
         <td nowrap align="right" ><FONT size="2">共<s:property value="page.pageCount"/>页</FONT></td>
       <td nowrap align="right" width="40"><FONT size="2">第<s:property value="page.pageNo"/>页</FONT></td>						
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