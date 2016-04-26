<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ÖªÊ¶ÌåÏµ¹ÜÀí</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
var knowledgeUnitCode=0;
function addKnowledgeUnit(){

	var str='<TABLE id="t" width="80%" bgcolor="#55AAEE" align="center">'
		+'<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">ÖªÊ¶µ¥Ôª±àºÅ</TD>'
		+'<TD bgcolor="#FFFFFF" align="center"> '
		+'<INPUT TYPE="text" NAME="knowledgeUnitList['+knowledgeUnitCode+'].KNOWLEDGEUNITCODE" id="knowledgeUnitCode"></TD></tr>'
		+' <tr align="center" valign="middle" height="28"><TD align="center" class="tabletitle">ÖªÊ¶µ¥Ôª</TD>'
		+'<TD bgcolor="#FFFFFF" align="center">'
		+'<INPUT TYPE="text" NAME="knowledgeUnitList['+knowledgeUnitCode+'].KNOWLEDGEUNITNAME" id="knowledgeUnitName"></TD></TR>'
		+'<tr align="center" valign="middle" height="28"><td align="center" class="tabletitle"></td>'
		+'<td bgcolor="#FFFFFF" align="center"><INPUT TYPE="button" VALUE="Ìí¼Ó" ONCLICK="checkcmtform();"></td></tr></TABLE>'
     document.getElementById('b').insertAdjacentHTML("beforeBegin",str);
	 document.getElementById("bu").disabled=true;
	 document.getElementById("bu").disabled=true;
	 document.getElementById("bu1").disabled=false;
	 knowledgeUnitCode++;
}

function checkKnowledgeUnitCode()
{
	var ele=document.getElementById("knowledgeUnitCode");
	var len=ele.value.length;
	
	 if(len==0)
	{
		alert("ÖªÊ¶µ¥Ôª±àºÅ²»ÄÜÎª¿Õ");
		return false;
	}
	else{
		return true;
	}
	
}

function checkKnowledgeUnitName()
{
	var ele=document.getElementById("knowledgeUnitName");
	var len=ele.value.length;
	 if(len==0)
	{

		alert("ÖªÊ¶µ¥ÔªÃû³Æ²»ÄÜÎª¿Õ");
		return false;
	}else{
		return true;
	}
}

function checkcmtform()
{
	
	if(checkKnowledgeUnitCode()&&checkKnowledgeUnitName())
	{
		alert("Ìá½»³É¹¦");
		form1.submit();
		
	}
	else
	{
		alert("²»ÄÜÌá½»");
		
	}
}
function del(){
	document.getElementById("t").removeNode(true);
	document.getElementById("bu1").disabled=true;
	document.getElementById("bu").disabled=false;
	}

function submitKnowledgeUnit(){
	
	form1.submit();
	
}

function cform(){ 
	if(!confirm("ÊÇ·ñÒªÉ¾³ý£¿")) 
	return false; 
} 
</script>
<body>
<form name="form1" action="<%=request.getContextPath() %>/knowledgeUnit!addUnits.action" method="post">
<input type="hidden" name="lessonCode" value="${lesson.code}"/>
	<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle"><s:property value="lesson.name"/>ÖªÊ¶ÌåÏµ¹ÜÀí</span>
			</td>
			<td >
				<input id="bu" type="button" value="Ìí¼ÓÖªÊ¶µ¥Ôª" onclick="addKnowledgeUnit();">
			</td>
			<td  align="center">
				<input disabled id="bu1" type="button" value="³·ÏúÌí¼Ó" onclick="del();">
			</td>
		</tr>
	</table>	
<table width="100%" align="center">
 <tr>
	<td>
	<br id="b">
	</td>
 </tr>
</table>
<br>
				

<table  width="80%" bgcolor="#55AAEE" align="center">
	<tr align="center" valign="middle" height="28">

		<td align="center" class="tabletitle">µ¥Ôª±àºÅ</td>		
		<td  class="tabletitle">µ¥ÔªÃû³Æ</td>
		<td align="center" class="tabletitle">ÖªÊ¶µã±àºÅ </td>
		<td  class="tabletitle">ÖªÊ¶µãÃû³Æ</td>
		<td  class="tabletitle">×îÐ¡Ñ§Ê±</td>
	    <td  class="tabletitle">×î´óÑ§Ê±</td>
		<td  class="tabletitle">²Ù×÷</td>
	    <td  class="tabletitle">&nbsp;</td>
		<td  class="tabletitle">&nbsp;</td>
	</tr>
	<!--´Ó¿âÖÐ¼ìË÷³öÀ´µÄÊý¾Ý -->
<s:if test="knowledgeUnitList!=null">
<s:iterator id="unit" value="knowledgeUnitList" status="i">	
	
	<tr align="center" valign="middle" height="28" >
		<td  align="center" bgcolor="#FFFFEE"><s:property value="KNOWLEDGEUNITCODE"/></td>		
		<td  bgcolor="#FFFFFF"><s:property value="KNOWLEDGEUNITNAME"/> </td>
		<td  bgcolor="#FFFFFF">&nbsp;</td>
		<td  bgcolor="#FFFFFF">&nbsp;</td>
		<td bgcolor="#FFFFFF">&nbsp;</td>
	    <td  bgcolor="#FFFFFF">&nbsp;</td>
 		<td  bgcolor="#FFFFFF">
			<a href="<%=request.getContextPath() %>/knowledgePoint!addPage.action?knowledgeUnitCode=<s:property value="KNOWLEDGEUNITCODE"/>&lessonCode=${lesson.code}">ÖªÊ¶µã¹ÜÀí</a>
		</td>
	  	<td  bgcolor="#FFFFFF" >
			<a href="<%=request.getContextPath() %>/knowledgeUnit!editKnowledgeUnitPage.action?knowledgeUnitCode=<s:property value="KNOWLEDGEUNITCODE"/>&lessonCode=${lesson.code}">ÐÞ¸Ä</a>
		</td>
		<td  bgcolor="#FFFFFF" >
			<a href="<%=request.getContextPath() %>/knowledgeUnit!deleteKnowledgeUnit.action?knowledgeUnitCode=<s:property value="KNOWLEDGEUNITCODE"/>&lessonCode=${lesson.code}" onclick="return cform();">É¾³ý</a>
		</td>    
	</tr>
	
	<s:if test="knowledgePoints!=null">
	<s:iterator id="point"value="#unit.knowledgePoints "status="j">			
	<tr align="center" valign="middle" height="28" bgcolor="#66CCFF">
		<td bgcolor="#FFFFFF" align="center" valign="middle"></td>
		<td bgcolor="#FFFFFF" align="center">&nbsp;</td>
		<td bgcolor="#FFFFFF" align="center">
			<s:property value="KNOWLEDGEPOINTCODE"/>
		</td>
		
		<td bgcolor="#FFFFFF" align="center">
			<s:property value="KNOWLEDGEPOINTNAME"/>
		</td>
		<td bgcolor="#FFFFFF" align="center">
			<s:property value="MINHOURS"/>
		</td>
	    <td bgcolor="#FFFFFF" align="center">
	    	<s:property value="MAXHOURS"/>
		</td>
		<td bgcolor="#FFFFFF" align="center">
		</td>
		<td width="10%" bgcolor="#FFFFFF" ></td>
		<td width="10%" bgcolor="#FFFFFF" ></td>    
	</tr>
	</s:iterator>
	</s:if>
</s:iterator>
</s:if>		
</table>

</body>
</html>