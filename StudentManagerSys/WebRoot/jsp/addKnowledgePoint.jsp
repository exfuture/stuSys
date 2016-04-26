<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>知识点管理</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">

function goBack()
{
	var url="knowledgeUnit!addKnowledgeUnit.action";
	window.location.href=url;
}
var knowledgePointCode=0;
function addKnowledgePoint(){
	
	var str='<TABLE id="t" width="80%" bgcolor="#55AAEE" align="center" >'
		+'<TR align="center" valign="middle" height="28"><TD align="center" class="tabletitle">知识点编号</TD>'
		+'<TD bgcolor="#FFFFFF" align="center"> '
		+'<INPUT TYPE="text" NAME="knowledgePointList['+knowledgePointCode+'].KNOWLEDGEPOINTCODE" id="knowledegePointCode"></TD></tr>'
		+'<tr align="center" valign="middle" height="28"><TD align="center" class="tabletitle">知识点</TD>'
		+'<TD bgcolor="#FFFFFF" align="center">'
		+' <INPUT TYPE="text" NAME="knowledgePointList['+knowledgePointCode+'].KNOWLEDGEPOINTNAME" id="knowledgePointName"></TD></TR>'
		+'<TR align="center" valign="middle" height="28"> <TD align="center" class="tabletitle">最大学时</TD><TD bgcolor="#FFFFFF" align="center">'
		+' <INPUT TYPE="text" NAME="knowledgePointList['+knowledgePointCode+'].MAXHOURS" id="maxHour"></TD></tr>'
		+'<tr align="center" valign="middle" height="28"><TD  align="center" class="tabletitle">最小学时</TD><TD  bgcolor="#FFFFFF" align="center">'
		+' <INPUT TYPE="text" NAME="knowledgePointList['+knowledgePointCode+'].MINHOURS" id="minHour"></TD></TR>'
		+'<tr align="center" valign="middle" height="28"><td align="center" class="tabletitle"></td>'
		+'<td bgcolor="#FFFFFF" align="center"><INPUT TYPE="button" VALUE="添加" ONCLICK="checkcmtform();"></td></tr></TABLE>'
     document.getElementById('b').insertAdjacentHTML("beforeBegin",str);
	 document.getElementById("bu").disabled=true;
	 document.getElementById("bu1").disabled=false;
     knowledgePointCode++;
	}


function checkKnowledgePointCode()
{
	var ele=document.getElementById("knowledegePointCode");
	var len=ele.value.length;
	
	 if(len==0)
	{
		alert("知识点编号不能为空");
		return false;
	}
	else{
		return true;
	}
	
}

function checkKnowledgePointName()
{
	var ele=document.getElementById("knowledgePointName");
	var len=ele.value.length;
	 if(len==0)
	{

		alert("知识点名称不能为空");
		return false;
	}else{
		return true;
	}
}


function checkMaxHour()
{
	var ele=document.getElementById("maxHour");
	var len=ele.value.length;
	 if(len==0)
	{

		alert("最大学时不能为空");
		return false;
	}else{
		return true;
	}
}

function checkMinHour()
{
	var ele=document.getElementById("minHour");
	var len=ele.value.length;
	 if(len==0)
	{

		alert("最小学时不能为空");
		return false;
	}else{
		return true;
	}
}

function checkcmtform()
{
	if(checkKnowledgePointCode()&&checkKnowledgePointName()&&checkMaxHour()&&checkMinHour())
	{
		alert("提交成功");
		form1.submit();
		
	}
	else
	{
		alert("不能提交");
		
	}
}

function del(){
	document.getElementById("t").removeNode(true);
	document.getElementById("bu1").disabled=true;
	document.getElementById("bu").disabled=false;
	}

function submitKnowledgePoint(){
	
	form1.submit();
}

function cform(){ 
	if(!confirm("是否要删除？")) 
	return false; 
	} 

</script>


<body>
	<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle"><s:property value="knowledgeUnit.KNOWLEDGEUNITNAME"/>的知识点管理</span>
			</td>
			<td >
				<input id="bu" type="button" value="添加知识点" onclick="addKnowledgePoint();">
			</td>
			<td >
				<input disabled id="bu1" type="button" value="撤销添加" onclick="del();">
			</td>	
			<td >
				<input  id="bu1" type="button" value="返回" onclick="goBack();">
			</td>	
		</tr>
	</table>

<form name="form1" action="<%=request.getContextPath() %>/knowledgePoint!add.action" method="post" onsubmit="alert();">
<input type="hidden" name="knowledgePointList[0].KNOWLEDGEUNITCODE" value="<s:property value="knowledgeUnit.KNOWLEDGEUNITCODE"/>"/>
<input type="hidden" name="lessonCode" value="${lessonCode}"/>
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

		<td width="15%" align="center" class="tabletitle">知识点编号 </td>
		<td width="25%" align="center" class="tabletitle">知识点名称</td>
		<td width="15%" align="center" class="tabletitle">最小学时</td>
	    <td width="15%" align="center" class="tabletitle"">最大学时</td>
	    <td width="15%" align="center" class="tabletitle"></td>
 		<td width="15%" align="center" class="tabletitle"></td>
	</tr>

	<s:if test="knowledgePointList!=null">
	<s:iterator id="point"value="knowledgePointList"status="j">			
	<tr >
		<td bgcolor="#FFFFFF" align="center">
			<s:property value="KNOWLEDGEPOINTCODE"/>
		</td>
		<td bgcolor="#FFFFFF" align="center">
			<s:property value="KNOWLEDGEPOINTNAME"/>
		</td>
		<td bgcolor="#FFFFFF" align="center">
			<s:property value="MINHOURS"/>
		</td>
	    <td bgcolor="#FFFFFF" align="center"><s:property value="MAXHOURS"/></td>
 		<td bgcolor="#FFFFFF" align="center">
			<a href="<%=request.getContextPath() %>/knowledgePoint!editKnowledgePointPage.action?knowledgePointCode=<s:property value="KNOWLEDGEPOINTCODE"/>&lessonCode=${lessonCode}">修改</a>
		</td>
 		<td bgcolor="#FFFFFF" align="center">
			 <a href="<%=request.getContextPath() %>/knowledgePoint!deleteKnowledgePoint.action?knowledgePointCode=<s:property value="KNOWLEDGEPOINTCODE"/>&knowledgeUnitCode=<s:property value="KNOWLEDGEUNITCODE"/>" onclick="return cform();">删除</a>
		</td>
				    
	</tr>
	</s:iterator>
	</s:if>
  </table>

</form>
</body>

</html>