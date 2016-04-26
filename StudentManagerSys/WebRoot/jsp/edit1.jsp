<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<%= request.getContextPath() %>/css/dtree.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="<%=request.getContextPath()%>/js/dtree.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
d = new dTree('d','<%= request.getContextPath() %>');
d.add('0','-1','知识结构图')
<s:iterator value="knowUnitList">	
d.add('<s:property value="KNOWLEDGEUNITCODE"/>','0','<s:property value="KNOWLEDGEUNITNAME"/>');		
</s:iterator>
<s:iterator value="knowPointList">	
	
d.add('<s:property value="KNOWLEDGEPOINTCODE"/>','<s:property value="KNOWLEDGEUNITCODE"/>','<s:property value="KNOWLEDGEPOINTNAME"/>');		
</s:iterator>
document.write(d);



</script>
<body>
<A HREF="<%=request.getContextPath()%>/leadLesson!addPage.action?lessonCode=<s:property value="lessonCode" />" >添加前导课程</A>
<br>
<A HREF="<%=request.getContextPath()%>/knowledgeUnit!addPage.action?lessonCode=<s:property value="lessonCode" />" >添加知识单元</A>
<TABLE  width="50%" border="1" cellspacing="1" cellpadding="2" class="bgtable" align="center" >
			
	<s:iterator value="lessonbaseinfoList" >
	<TR  align="center">
		<td>前导课程</td>
		<TD><s:property value="name" /></TD>
		<TD><A HREF="" >修改</A></TD>
		<TD><A HREF="" >删除</A></TD>
	</TR>	
	</s:iterator>
	<s:iterator value="knowUnitList" >
	<TR  align="center">
		<td>知识单元</td>
		<TD><s:property value="KNOWLEDGEUNITNAME" /></TD>
		<TD><A HREF="<%=request.getContextPath()%>/knowledgePoint!addPage.action?knowledgeUnitCode=<s:property value="KNOWLEDGEUNITCODE" />" >添加知识点</A></TD>
		<TD><A HREF="<%=request.getContextPath()%>/knowledgeUnit!delete.action?knowledgeUnitCode=<s:property value="KNOWLEDGEUNITCODE" />" >删除</A></TD>
	</TR>
	</s:iterator>
	<s:iterator value="knowPointList" >
	<TR  align="center">
		<td>知识点</td>
		<TD><s:property value="KNOWLEDGEPOINTNAME" /></TD>
		<TD><A HREF="<%=request.getContextPath()%>/knowledgePoint!editPage.action?knowledgePointCode=<s:property value="KNOWLEDGEPOINTCODE" />" >修改</A></TD>
		<TD><A HREF="<%=request.getContextPath()%>/knowledgePoint!delete.action?knowledgePointCode=<s:property value="KNOWLEDGEPOINTCODE" />" >删除</A></TD>
	</TR>
	</s:iterator>
    </TR>

  </TABLE> 
    
</body>
<script type="text/javascript">
function Add()
{
	var zi=window.showModalDialog('<%=request.getContextPath() %>/jsp/addKnowledgePoint.jsp','','dialogHeight:300px;dialogWidth:800px;');
	window.location.href="<%=request.getContextPath() %>/lesson!editPage1.action";
}

</script>

</html>