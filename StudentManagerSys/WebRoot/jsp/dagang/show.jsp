<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>��ʾ��ѧ���</title>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
			<table id="workItemList" width="80%" border="0"align="center" >
				<!--������ -->
				<tr align="center" valign="middle" height="28">
					<td  align="center" class="tabletitle">��Ԫ���</td>
					<td  class="tabletitle">��Ԫ����</td>
					<td  class="tabletitle">֪ʶ���� </td>
					<td  class="tabletitle">֪ʶ������</td>
					<td  class="tabletitle">��Сѧʱ</td>
				    <td  class="tabletitle">���ѧʱ</td>				    
				</tr>
				<!--�ӿ��м������������� -->

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
				<!-- ���б�����Ϊ�յ�ʱ��Ҫ��ʾ����ʾ��Ϣ -->
  	</table>

</body>
</html>