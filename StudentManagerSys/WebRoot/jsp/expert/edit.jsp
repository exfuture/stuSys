<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>�޸�ר����Ϣ</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>

<script Charset="gbk" Type="Text/JavaScript" Language="JavaScript" >

//function change(){
	//var c1 = document.getElementById("levelcode").value;
	//document.getElementById(c1).length=0;
	//var c2 = document.getElementById("positionlevelcode").value;
	
	
//}
</SCRIPT>
<body>
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">ר����Ϣ�޸�</span>
			</td>
		</tr>
	</table>
    <br><br><br>
	<s:if test="expertList!=null">
	<s:iterator id="expert" value="expertList">
	<form name="form1" action="<%=request.getContextPath() %>/expert!edit1.action?expertno=<s:property value="EXPERTNO"/>" method="post">
		 <TABLE width="80%" bgcolor="#55AAEE" align="center">
				
				
				<TR align="center" valign="middle" height="28">
					<TD align="center" class="tabletitle">ר�ұ��</TD>	
					<TD bgcolor="#FFFFFF" align="left"><s:property value="EXPERTNO"/></TD>
				</tr>
				<tr align="center" valign="middle" height="28">
					<TD align="center" class="tabletitle">����</TD>
					<TD bgcolor="#FFFFFF" align="left"><INPUT TYPE="text" NAME="expertname" id="expertname" value=<s:property value="EXPERTNAME"/>></TD>
				</TR>
				<tr align="center" valign="middle" height="28">
					<TD  align="center" class="tabletitle">�Ա�</TD>
					<TD  bgcolor="#FFFFFF" align="left">
						<s:if test="sex=='��'">
					<input type="radio" name="expertsex" value="��" checked>�� 
					
					<input type="radio" name="expertsex" value="Ů">Ů
					</s:if>
					<s:else>
						<input type="radio" name="expertsex" value="��" >�� 
					
						<input type="radio" name="expertsex" value="Ů" checked>Ů
					</s:else>
					</td>
				</tr> 
				<TR align="center" valign="middle" height="28">
					<TD align="center" class="tabletitle">���ڵ�λ</TD>
					<TD bgcolor="#FFFFFF" align="left"> <INPUT TYPE="text" maxLength=50 NAME="workplace" id="workplace" value=<s:property value="WORKPLACE"/>></TD>
				</tr>	 
				<TR align="center" valign="middle" height="28">
					<TD align="center" class="tabletitle">ְ��</TD>
					<TD bgcolor="#FFFFFF" align="left"> 
						<select name="professionallevel" size="1" " style="width:120px">
							<s:iterator value="professionallevelList">
                                <option value="0"><s:property value="PROFESSIONALLEVEL"/></option>
								<option value="${TITLECODE}">${TITLENAME}</option>
							</s:iterator>
						</select>
					</TD>
				</tr>	 
				<TR align="center" valign="middle" height="28">
					<TD align="center" class="tabletitle">ְ��</TD>
					<TD bgcolor="#FFFFFF" align="left"> 
						<select name="duty" size="1" " style="width:120px">
							<s:iterator value="dutyList" >
								<option value="${LEVELCODE}">${LEVELNAME}</option>
							</s:iterator>
						</select>
						<select name="duty2" size="1" " style="width:120px">
							<s:iterator value="duty2List">
								<option value="0"><s:property value="DUTY"/></option>
								<option value="${POSITIONLEVELCODE}">${POSITIONNAME}</option>
							</s:iterator>
						</select>
					</TD>
				</tr>  
				<TR align="center" valign="middle" height="28">
					<TD align="center" class="tabletitle">�о�����</TD>
					<TD bgcolor="#FFFFFF" align="left"> <INPUT TYPE="text" maxLength=100 NAME="researcharea" id="researcharea" value=<s:property value="RESEARCHAREA"/>></TD>
				</tr>  
				<TR align="center" valign="middle" height="28">
					<TD align="center" class="tabletitle">��鵥λ</TD>
					<TD bgcolor="#FFFFFF" align="left"><INPUT TYPE="text" maxLength=100 NAME="checkekplace" id="checkekplace" value=<s:property value="CHECKEKPLACE"/>></TD>
				</tr>
				
				<tr align="center" valign="middle" height="28">
					<TD  align="center" class="tabletitle"></TD>
					<TD  bgcolor="#FFFFFF" align="left"><INPUT TYPE="submit" value="�޸�"  ></TD>
				</TR>
			
	
  </TABLE> 
</form>
</s:iterator>
</s:if>
</body>
<SCRIPT LANGUAGE="JavaScript">


</SCRIPT>
</html>