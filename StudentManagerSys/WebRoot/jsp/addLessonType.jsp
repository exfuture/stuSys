<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="lgd.jy444.yxn.page.Page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
 <HEAD>
  <TITLE>��ѧ��������ϵͳ��ӿγ���� </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
 </HEAD>
	<SCRIPT LANGUAGE="JavaScript">
	
	function addLessonType(){
		 var str='<TABLE id="t" width="80%" bgcolor="#55AAEE" align="center">'
			 +'<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">������</TD><TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="lessonType.typeCode" id="lessonTypeCode"></TD></TR>'
			 +'<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">��������</TD><TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="lessonType.typeName" id="lessonTypeName"></TD></TR>'
			 +'<tr align="center" valign="middle" height="28"><td align="center" class="tabletitle"></td><td bgcolor="#FFFFFF" align="center"><input type="button" value="�ύ" onclick="checkcmtform();"/></td></tr></TABLE>'
		document.getElementById('b').insertAdjacentHTML("beforeBegin",str);
		 document.getElementById("bu").disabled=true;
		 document.getElementById("bu1").disabled=false;
		}
	
	function checkLessonTypeCode()
	{
		var ele=document.getElementById("lessonTypeCode");
		var len=ele.value.length;
		
		 if(len==0)
		{
			alert("����Ų���Ϊ��");
			return false;
		}
		else{
			return true;
		}
		
	}

	function checkLessonTypeName()
	{
		var ele=document.getElementById("lessonTypeName");
		var len=ele.value.length;
		 if(len==0)
		{

			alert("������Ʋ���Ϊ��");
			return false;
		}else{
			return true;
		}
	}

	function checkcmtform()
	{
		
		if(checkLessonTypeCode()&&checkLessonTypeName())
		{
			alert("�ύ�ɹ�");
			document.form1.action="<%=request.getContextPath() %>/lessonType!add.action";  
			document.form1.submit();
			
		}
		else
		{
			alert("�����ύ");
			
		}
	}
	function del(){
		document.getElementById("t").removeNode(true);
		document.getElementById("bu1").disabled=true;
		document.getElementById("bu").disabled=false;
		}	
	function add(){
			document.form1.action="<%=request.getContextPath() %>/lessonType!add.action";  
			document.form1.submit();
		}
	function delLessonType(){
		alert("ȷ��ɾ����");
		document.form1.action="<%=request.getContextPath() %>/lessonType!deleteLessonType.action";  
		document.form1.submit();
		}	
	</SCRIPT>
<form name="form1" action="" method="post">
 <BODY>
 <s:action id="lessonType" name="lessonType"/>
	<table width="100%">		
		<tr >			
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">�γ�������</span>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<input id="bu" type="button" value="��ӿγ�����" onclick="addLessonType();">
			</td>	
			<td bgcolor="#FFFFFF" align="center">
				<input id="bu1" disabled type="button" value="�������" onclick="del();">
			</td>				    
		</tr>	
	</table>
	<br>
	<table width="100%">
		<tr>
			<td>
				<br id="b">
			</td>
		</tr>
	</table>	
	<table width="80%" bgcolor="#55AAEE" align="center">
	<tr align="left" valign="middle" height="28">	
		<td align="center" class="tabletitle">�����</td>
		<td align="center" class="tabletitle">�����</td>
	    <td align="center" class="tabletitle"></td>
		<td align="center" class="tabletitle"></td>
	</tr>
	</tr>
		<s:if test="lessonTypeList!=null">
		<s:iterator id="point"value="lessonTypeList">	

		<tr >
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="typeCode"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="typeName"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<a href="<%=request.getContextPath() %>/lessonType!editPage.action?typeCode=<s:property value="typeCode"/>">
					�޸�
				</a>	
			</td>			
			<td bgcolor="#FFFFFF" align="center">
				<a href="<%=request.getContextPath() %>/lessonType!deleteLessonType.action?typeCode=<s:property value="typeCode"/>">
					ɾ��
				</a>	
			</td>	
			
					    
		</tr>
	
		</s:iterator>
		</s:if>
	</table>
</form>
<TABLE width="80%" align="center">
 	 <tr>	
       <td ><FONT size="2">����<s:property value="page.rowCount"/>��¼</FONT></td>
          
        <td ><FONT size="2">��ǰ��ʾ<span class="style2"><s:property value="page.beginShow"/>--<s:property value="page.endShow"/></span>��</FONT></td>
		<td ><FONT size="2">ת��<input type="text" size="2" name="pageNo" id="pageno"/>ҳ</FONT><input type="button" value="go" onclick="go();"/></td>

		<% 
			Page p=new Page();
			p=(Page)request.getAttribute("page");
			if(p.getPageNo()==1){		
		%>
 		<td  nowrap><FONT size="2" color="999999">��ҳ</FONT></a></td>
          <td  nowrap><FONT size="2" color="999999">��ҳ</FONT></td>
   		<%} else{%>
		 <td  nowrap><a href="<%=request.getContextPath() %>/lessonType!addPage.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">��ҳ</FONT></a></td>
		 <td  nowrap><a href="<%=request.getContextPath() %>/lessonType!addPage.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">��ҳ</FONT></a></td>
		<%} 
		  if(p.getPageNo()==p.getPageEnd()){  
		%>
          <td nowrap><FONT size="2" color="999999">��ҳ</FONT></td>
 		<td nowrap><FONT size="2" color="999999">βҳ</FONT></td>
	     <%} else{%>
	    <td nowrap><a href="<%=request.getContextPath() %>/lessonType!addPage.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">��ҳ</FONT></a></td>
		<td nowrap><a href="<%=request.getContextPath() %>/lessonType!addPage.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">βҳ</FONT></a></td>
		
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


 
</HTML>