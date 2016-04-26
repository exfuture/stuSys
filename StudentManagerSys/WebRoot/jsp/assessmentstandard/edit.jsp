<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ÐÞ¸Ä</title>
 <LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
	function checkForm(){
		var staId = document.getElementById("standardid");		
		var leh=staId.value.length;
		if(leh==0){
			alert("ÇëÄúÊäÈëÖ¸±ê±àºÅ!");
			return false;
		}
		return true;
	} 
    </script>
<body>
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">ÆÀ¼ÛÖ¸±êÐÞ¸Ä</span>
			</td>
		</tr>
	</table>
<br><br><br>
 <form action="<%=request.getContextPath() %>/manager!edit.action" method="post">
  <TABLE width="80%" bgcolor="#55AAEE" align="center">
	<TR align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle">Ö¸±ê±àºÅ</TD>
		<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text"id="standardid" NAME="manager.STANDARDID" value="${manager.STANDARDID }" disabled></TD>
	
  </TR>
	<TR align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle">ÆÀ¼ÛÖ¸±ê</TD>
		<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="manager.STANDARDNAME" value="${manager.STANDARDNAME }"></TD>
	</TR>
	<TR align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle">×ÔÆÀÏµÊý</TD>
		<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="manager.SELFCOEFFICIENT" value="${manager.SELFCOEFFICIENT}"></TD>
	</TR>
	<TR align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle">Ñ§ÉúÆÀ¼ÛÏµÊý</TD>
		<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="manager.STUDENTCOEFFICIENT" value="${manager.STUDENTCOEFFICIENT }"></TD>
		</TR>
	<TR align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle">Í¬ÐÐÆÀ¼ÛÏµÊý</TD>
		<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="manager.COLLEAGUECOEFFICIENT" value="${manager.COLLEAGUECOEFFICIENT }"></TD>
	</TR>
	<TR align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle">×¨¼ÒÆÀ¼ÛÏµÊý</TD>
		<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="text" NAME="manager.EXPERTCOEFFICIENT" value="${manager.EXPERTCOEFFICIENT }"></TD>
	</TR>
	<tr align="center" valign="middle" height="28">
		<TD align="center" class="tabletitle"></TD>
		<TD bgcolor="#FFFFFF" align="center"><INPUT TYPE="submit" value="Ìá½»" ></TD>
	</TR>
  </TABLE>
 </form>
</body>
</html>