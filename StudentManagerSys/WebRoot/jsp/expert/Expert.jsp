<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="lgd.jy444.yxn.page.Page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>ר�һ�����Ϣ</title>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
  <LINK href="/Edu/frame/style.css" type=text/css rel=stylesheet>
 <link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>

<script Charset="gbk" Type="Text/JavaScript" Language="JavaScript" >
	function addExpert(){
		var str='<TABLE  id="t" width="80%" bgcolor="#55AAEE" align="center" >'+
		' <TR align="center" valign="middle" height="28">'+
		'<TD align="center" class="tabletitle">ר�ұ��</TD>'+
		'<TD bgcolor="#FFFFFF" align="center">'+
		' <INPUT TYPE="text" maxLength=20 NAME="expertno" id="expertno"></TD></tr>'+
		'<tr align="center" valign="middle" height="28"><td align="center" class="tabletitle">����</TD>'+
		'<TD  bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="expertname" id="expertname"></TD>'+
		'</TR>'+
		'<tr align="center" valign="middle" height="28"><TD  align="center" class="tabletitle">�Ա�</TD>'+
		'<TD  bgcolor="#FFFFFF" align="center">'+
		'<input type="radio" name="expertsex" value="��" checked>��'+
		' <input type="radio" name="expertsex" value="Ů">Ů</td></tr>'+
		' <TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">���ڵ�λ</TD>'+
		'<TD bgcolor="#FFFFFF" align="center"> <INPUT TYPE="text" maxLength=50 NAME="workplace" id="workplace"></TD></tr>'+
		'<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">ְ��</TD>'+
		'<TD bgcolor="#FFFFFF" align="center"> '+
		'<select name="professionallevel" size="1" " style="width:120px">'+
		'<option value="0">ѡ��ר��ְ��</option>'+
		'<s:iterator value="professionallevelList">'+
		'<option VALUE="${TITLECODE}">${TITLENAME}</option></s:iterator></select></TD></tr>'+
		'<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">ְ��</TD>'+
		'<TD bgcolor="#FFFFFF" align="center">'+
		'<SELECT id="titlecode" NAME="duty">'+
		'<option value="0">ѡ��ְ�񼶱�</option>'+
		'<s:iterator value="dutyList">'+
		'<OPTION VALUE="${LEVELCODE}">${LEVELNAME}</option></s:iterator></SELECT> '+
		'<SELECT ID="positionlevelcode" NAME="positionlevelcode">'+
		'<option value="0">ѡ��ְ��</option>'+
		'<s:iterator value="duty2List">	'+
		'<OPTION VALUE="${POSITIONLEVELCODE}">${POSITIONNAME}</option></s:iterator></SELECT></TD></tr>'+
		'<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">�о�����</TD>'+
		'<TD bgcolor="#FFFFFF" align="center">'+
		'<INPUT TYPE="text" maxLength=100 NAME="researcharea" id="researcharea"></TD></tr>'+
		'<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">��鵥λ</TD>'+
		'<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" maxLength=100 NAME="checkekplace" id="checkekplace"></TD></tr>'+
		'<tr align="center" valign="middle" height="28"><TD align="center" class="tabletitle"></TD>'+
		'<TD  bgcolor="#FFFFFF" align="center"><INPUT TYPE="submit" value="�ύ" onClick="checkForm();" ></TD></TR></TABLE>'
		document.getElementById('b').insertAdjacentHTML("beforeBegin",str);
		 document.getElementById("bu").disabled=true;
		 document.getElementById("bu1").disabled=false;
		}
	function del(){
		document.getElementById("t").removeNode(true);
		document.getElementById("bu1").disabled=true;
		document.getElementById("bu").disabled=false;
		}
	function change(){
		var c1 = document.getElementById("levelcode").value;
		document.getElementById(c1).length=0;
		var c2 = document.getElementById("positionlevelcode").value;
		
	}
	function checkForm(){
		
		var expertno = document.getElementById("expertno").value;
		var expertname = document.getElementById("expertname").value;

		if(expertno == ''){
			alert('������ר�ұ�ţ�');
			return false;
		}
		else if(expertname == ''){
			alert('������ר��������');
			return false;
		}

		return true;
	}

	</SCRIPT>

<body>
	<form action="<%=request.getContextPath() %>/expert!add.action" method="post">
	<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">ר����Ϣ����</span>
			</td>
			<td bgcolor="#FFFFFF" align="center"> 
				<input id="bu" type="button" value="���ר����Ϣ" onClick="addExpert();"></td>
			<td bgcolor="#FFFFFF" align="center">
				<input disabled id="bu1" type="button" value="�������" onClick="del();">	
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
	<br>
	<table   width="80%" bgcolor="#55AAEE" align="center">
		 <tr align="center" valign="middle" height="28">
       		
			<td align="center" class="tabletitle">ר�ұ��</td>
			<td align="center" class="tabletitle">����</td>
			<td align="center" class="tabletitle">�Ա�</td>
			<td align="center" class="tabletitle">���ڵ�λ</td>
			<td align="center" class="tabletitle">ְ��</td>
			<td align="center" class="tabletitle">ְ��</td>
			<td align="center" class="tabletitle">�о�����</td>
			<td align="center" class="tabletitle">��鵥λ</td>
			<td align="center" class="tabletitle"></td>
			<td align="center" class="tabletitle"></td>	
    	</tr>

		<s:if test="expertList!=null">
		<s:iterator id="expert" value="expertList ">	
				
		<tr >
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="EXPERTNO"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="EXPERTNAME"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="EXPERTSEX"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="WORKPLACE"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">                           
                    <s:property value="PROFESSIONALLEVEL"></s:property>   
			</td>
			<td bgcolor="#FFFFFF" align="center">                            
                    <s:property value="DUTY"></s:property> 
			</td>	
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="RESEARCHAREA"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<s:property value="CHECKEKPLACE"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				<a href="<%=request.getContextPath() %>/expert!edit.action?expertno=<s:property value="EXPERTNO"/>">
					�޸�
				</a>
			</td>	
			<td  bgcolor="#FFFFFF" align="center">
				<a href="<%=request.getContextPath() %>/expert!delete.action?expertno=<s:property value="EXPERTNO"/>">
					ɾ��
				</a>
			</td>	
					    
		</tr>
		</s:iterator>
		</s:if>
	</table>
	</form>


</body>
</html>