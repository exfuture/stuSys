<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="lgd.jy444.yxn.page.Page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
 <HEAD>
  <TITLE>��ѧ��������ϵͳ��ӿγ�</TITLE>
  <META NAME="Generator" CONTENT="EditPlus"> 
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
 </HEAD>
	<script Charset="gbk" Type="Text/JavaScript" Language="JavaScript" >
	function checkstandardid()
	{
		var ele=document.getElementById("standardid");
		var len=ele.value.length;
		
		 if(len==0)
		{
			alert("ָ���Ų���Ϊ��");
			return false;
		}
		else{
			return true;
		}
		
	}

	function checkstandardname()
	{
		var ele=document.getElementById("standardname");
		var len=ele.value.length;
		 if(len==0)
		{

			alert("����ָ�겻��Ϊ��");
			return false;
		}else{
			return true;
		}
		

	}

	function checkcmtform()
	{
		
		if(checkstandardname()&&checkstandardname())
		{
			alert("�ύ�ɹ�");
			form1.submit();
			
		}
		else
		{
			alert("�����ύ");
			
		}
	}
	function addLesson(){
	 var str='<TABLE id="t" width="80%" bgcolor="#55AAEE" align="center">'+
	 '<TR align="center" valign="middle" height="28"> <TD align="center" class="tabletitle">ָ����</TD>'+
	 '<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" id="standardid"NAME="manager.standardid"></TD>'+
	 '</TR>'+
	 '<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">����ָ��</TD>'+
	 '<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" id="standardname"NAME="manager.standardname"></TD>'+
	 '</TR>'+
	 '<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">����ϵ��</TD>'+
	 '<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="manager.selfcoefficient"></TD>'+
	 '</TR>'+
	 '<TR align="center" valign="middle" height="28">'+
	 '<TD align="center" class="tabletitle">ѧ������ϵ��</TD>'+
	 '<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="manager.studentcoefficient"></TD>'+
	 '</TR>'+
	 '<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">ͬ������ϵ��</TD>'+
	 '<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="manager.colleaguecoefficient"></TD>'+
	 '</TR>'+
	 '<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">ר������ϵ��</TD>'+
	 '<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="manager.expertcoefficient"></TD>'+
	 '</TR>'+
	 '<tr align="center" valign="middle" height="28">'+
	 '<TD  align="center" class="tabletitle"></TD>'+
	 '<TD  bgcolor="#FFFFFF" align="center"><INPUT TYPE="button" value="�ύ"onclick="checkcmtform();"></TD>'	+
	 '</TR></TABLE>'
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
	</SCRIPT>
 <form name="form1" action="<%=request.getContextPath() %>/manager!add.action" method="post">
 <BODY>

	<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">��ѧָ�����</span>
			</td>
			
			<td bgcolor="#FFFFFF" align="center">
				<input id="bu" type="button" value="���ָ��" onclick="addLesson();">
			</td>		
			<td bgcolor="#FFFFFF" align="center">
				<input disabled id="bu1" type="button" value="�������" onclick="del();">
			</td>	

		</tr>
	</table>
	<table width="100%">
		<tr>
			<td>
				<br id="b">
			</td>
		</tr>
	</table>
	
  <table width="80%" bgcolor="#55AAEE" align="center">
    <tr align="center" valign="middle" height="28">
      <td align="center" class="tabletitle">ָ����</th>
      <td align="center" class="tabletitle">����ָ�� </th>
      <td align="center" class="tabletitle">����ϵ��</th>
      <td align="center" class="tabletitle">ѧ������ϵ��</th>
      <td align="center" class="tabletitle">ͬ������ϵ��</th>
      <td align="center" class="tabletitle">ר������ϵ��</th>
      <td align="center" class="tabletitle">&nbsp;</th>
      <td align="center" class="tabletitle">&nbsp;</th>
		<s:if test="managerList!=null">
		<s:iterator value="managerList ">			
		<tr >
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="STANDARDID"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="STANDARDNAME"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="SELFCOEFFICIENT"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="STUDENTCOEFFICIENT"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="COLLEAGUECOEFFICIENT"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="EXPERTCOEFFICIENT"/>
			</td>
			<td  bgcolor="#FFFFFF" align="center">
				<a href="<%=request.getContextPath() %>/manager!editPage.action?standardid=<s:property value="STANDARDID"/>">
					�޸�
				</a>
			</td>	
			<td  bgcolor="#FFFFFF" align="center">
				<a href="<%=request.getContextPath() %>/manager!delete.action?standardid=<s:property value="STANDARDID"/>">
					ɾ��
				</a>
			</td>	
					    
		</tr>
		</s:iterator>
		</s:if>
	</table>

<TABLE width="80%" align="center">
 	 <tr>	
       <td ><FONT size="2">����<s:property value="page.rowCount"/>��¼</FONT></td>
          
        <td ><FONT size="2">��ǰ��ʾ<span class="style2"><s:property value="page.beginShow"/>--<s:property value="page.endShow"/></span>��</FONT></td>
		<td  ><FONT size="2">ת��<input type="text" size="2" name="pageNo" id="pageno"/>ҳ</FONT><input type="button" value="go" onclick="go();"/></td>

		<% 
			Page p=new Page();
			p=(Page)request.getAttribute("page");
			if(p.getPageNo()==1){		
		%>
 		<td  nowrap><FONT size="2" color="999999">��ҳ</FONT></a></td>
          <td  nowrap><FONT size="2" color="999999">��ҳ</FONT></td>
   		<%} else{%>
		 <td  nowrap><a href="<%=request.getContextPath() %>/manager!addPage.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">��ҳ</FONT></a></td>
		 <td  nowrap><a href="<%=request.getContextPath() %>/manager!addPage.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">��ҳ</FONT></a></td>
		<%} 
		  if(p.getPageNo()==p.getPageEnd()){  
		%>
          <td nowrap><FONT size="2" color="999999">��ҳ</FONT></td>
 		<td nowrap><FONT size="2" color="999999">βҳ</FONT></td>
	     <%} else{%>
	    <td nowrap><a href="<%=request.getContextPath() %>/manager!addPage.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">��ҳ</FONT></a></td>
		<td nowrap><a href="<%=request.getContextPath() %>/manager!addPage.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">βҳ</FONT></a></td>
		
		<%} %>
         <td nowrap align="right" ><FONT size="2">��<s:property value="page.pageCount"/>ҳ</FONT></td>
       <td nowrap align="right" width="40"><FONT size="2">��<s:property value="page.pageNo"/>ҳ</FONT></td>						
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