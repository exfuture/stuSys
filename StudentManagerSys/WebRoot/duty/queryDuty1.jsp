<%@ page language="java" contentType="text/html; charset=gbk" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="edu.sms.page.Page"%>
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>��ѯֵ�����</title>
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
			alert("���������ҳ�������������������");
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
<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">	 
           <td width="120">          	 
				ѡ������<input type="text" id="cDate" name="cDate"  onClick="WdatePicker()"> <font color=red>���ҵ������ڿؼ�</font>
     	   </td>
     	   <td width="120">          	 
           		<select name="queryClassNo" size="1" " style="width:120px"><option value="0"> ѡ��༶ </option>                             
                          <option value="1102"> 2011��3+2 </option> 
                          <option value="1201"> 2012����ר </option> 
                          <option value="1202"> 2012��3+2 </option> 
                          <option value="1203"> 2012����ר </option> 
                          <option value="1301"> 2013����ר </option> 
                          <option value="1302"> 2013��3+2 </option> 
                          <option value="1303"> 2013����ר</option>         
                </select>  
     	   </td>
     	   <td width="120">          	 
           		<select name="queryTeacherName" size="1" " style="width:120px"><option value="0"> ѡ���ʦ </option>                             
					<option value="����ͤ"> ����ͤ </option>
					<option value="��ѩ��"> ��ѩ�� </option>
					<option value="������"> ������ </option>
					<option value="������"> ������ </option>
					<option value="��ɽ"> ��ɽ </option>
					<option value="Ԭ����"> Ԭ���� </option>
					<option value="����"> ���� </option>
					<option value="����"> ���� </option>
					<option value="����"> ���� </option>
					<option value="��ǿ"> ��ǿ </option>
					<option value="�����"> ����� </option>
					<option value="����"> ���� </option>
					<option value="����ϼ"> ����ϼ </option>
					<option value="���ʸ���"> ���ʸ��� </option>
					<option value="��˴��"> ��˴�� </option>
					<option value="����"> ���� </option>
					<option value="������"> ������ </option>
					<option value="��������"> �������� </option>
					<option value="������"> ������ </option>
					<option value="���"> ��� </option>
					<option value="�ο���"> �ο��� </option>
					<option value="��ѧ��"> ��ѧ�� </option>
					<option value="�˸���"> �˸���</option>
					<option value="��Ⱥ"> ��Ⱥ </option>
					<option value="���"> ��� </option>
					<option value="�⳱���"> �⳱��� </option>
					<option value="������"> ������ </option>
					<option value="���"> ���</option>
					<option value="κ��"> κ�� </option>
					<option value="������"> ������ </option>
					<option value="�¹�ǿ"> �¹�ǿ </option>
					
                </select>  
     	   </td>
     	   <td>
     	        <input type="submit" value="��ѯ"/>
           </td>
		</tr>
	</table>
	<table border="1" cellspacing="1" cellpadding="2" class="bgtable" align="center" style="table-layout:fixed" width="100%">
	<TR  align="center">
		<TD >ѧ��</TD><td >ֵ����</td><td >ֵ������</td><TD >�༶</TD><td > Ӧ�ó�������</td><td >ʵ�ʳ�������</td>
		<TD > ѡ������</TD><td >�¼�����</td><td >��������</td><TD >�޹�ȱ������</TD><td >  ȱ��������</td><td >�������</td>
		<TD >�������</TD><td > �༶���ǻ���</td><td>��дʱ��</td>
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
	</form>
       </TD>
		<TD background="images/index_12.gif">
			&nbsp;</TD>
	</TR>
</TABLE>


<!-- End ImageReady Slices -->
</BODY>
</html>