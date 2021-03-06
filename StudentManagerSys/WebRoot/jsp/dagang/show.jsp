<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>显示教学大纲</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
			<table id="workItemList" width="80%" border="0"align="center" >
				<!--标题行 -->
				<tr align="center" valign="middle" height="28">
					<td  align="center" class="tabletitle">单元编号</td>
					<td  class="tabletitle">单元名称</td>
					<td  class="tabletitle">知识点编号 </td>
					<td  class="tabletitle">知识点名称</td>
					<td  class="tabletitle">最小学时</td>
				    <td  class="tabletitle">最大学时</td>				    
				</tr>
				<!--从库中检索出来的数据 -->

			<s:if test="knowledgeUnits!=null">
			<s:iterator id="unit" value="knowledgeUnits" status="i">	
	
				<tr align="center" valign="middle" height="20" border="0" >
					<td  align="center" bgcolor="#55AAEE" id="kuc"> <s:property value="KNOWLEDGEUNITCODE"/></td>									
				    <td  bgcolor="#55AAEE"><s:property value="KNOWLEDGEUNITNAME"/></td>
				    <td  bgcolor="#55AAEE"></td>
					<td  bgcolor="#55AAEE">&nbsp;</td>
					<td bgcolor="#55AAEE">&nbsp;</td>
				    <td bgcolor="#55AAEE">&nbsp;</td>			  	    
				</tr>
				
				<s:if test="knowledgePoints!=null">
				<s:iterator id="point" value="#unit.knowledgePoints "status="j">			
				<tr>
					<td align="center"></td>
					<td align="center"></td>
					<td align="center"><s:property value="KNOWLEDGEPOINTCODE"/></td>
					<td align="center"><s:property value="KNOWLEDGEPOINTNAME"/></td>
					<td align="center"><s:property value="MINHOURS"/></td>
				    <td align="center"><s:property value="MAXHOURS"/></td>
				</tr>
				</s:iterator>
				</s:if>
			</s:iterator>
			</s:if>					
				<!-- 在列表数据为空的时候，要显示的提示信息 -->
  	</table>

</body>
</html>