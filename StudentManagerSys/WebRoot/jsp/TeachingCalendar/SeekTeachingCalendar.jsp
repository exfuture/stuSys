<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">

<link href="style/lx_oa.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function goBack() {
		var url = "teachingProgram!teachingProgramingIndextemp.action";
		window.location.href = url;
	}
</script>
<title>�γ��ƶ���ѧ����</title>
</head>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<!--��ť���� -->

<form
	action="<%=request.getContextPath()%>/teachingCalendarAction!DesignTeachingCalendar.action"
	method="post" name="addTeachingProgramForm">
<table width="924" border="0" cellspacing="0" bordercolor="DDDDDD">
<tr><td>&nbsp;&nbsp;��ѯ��ѧ�������£�</td>
</tr><br>
	<tr valign="middle"> 
		<td align="center">�γ�����:
		<s:property value="LESSONNAME"/><td>
	</tr>
	<tr align="center">
		<td align="center">�ον�ʦ:
		<s:property value="TEACHERNAME"/><td>
	</tr>
	<tr align="center">
		<td align="center">�ڿΰ༶:
		<s:property value="HEAD"/> </td>
	</tr>
	<tr align="center">
		<td align="center">ѧ��ѧ��:
		<s:property value="SEMESTER"/></td>
	</tr>
</table>


<!--�����к������� -->
<table id="workItemList" width="924" border="0" cellspacing="0"
	bordercolor="DDDDDD" style="table-layout: fixed;" class="db"
	>
	<!--������ -->
	<tr align="center" valign="middle" height="28">
		<td align="center" class="tabletitle">�ܴ�</td>
		<td align="center" class="tabletitle">�δ�</td>
		<td class="tabletitle">֪ʶ������</td>
		<td class="tabletitle">���ճ̶�Ҫ��</td>
		<td class="tabletitle">�ڿ�ѧʱ</td>
		<td class="tabletitle">ϰ���ѧʱ</td>
		<td class="tabletitle">ʵ��ѧʱ</td>
		<td class="tabletitle">�ϻ�ѧʱ</td>
		<td class="tabletitle">�γ��������</td>
		<td class="tabletitle">��������ѧʱ</td>
		<td class="tabletitle">������ҵ���</td>
		<td class="tabletitle">�ο����ϼ�ҳ��</td>
	</tr>

	<s:if test="teachincalendarList!=null">
		<s:iterator id="unit" value="teachincalendarList" status="i">

			<tr align="center" valign="middle" height="20" >
				<td align="center" bgcolor="#55AAEE"><input type="hidden"
					value="<s:property value="AGENTID"/>"
							 id="agentids"
					name="agentids" align="middle" /></td>
				<td bgcolor="#55AAEE"><input type="text" name="week"
					value="<s:property value="WEEK"/>" /></td>
				<td align="center" bgcolor="#55AAEE" id="kuc"><s:property
					value="LESSON" /></td>
				<td bgcolor="#55AAEE"><s:property value="KNOWLEDGEPOINTNAME" /></td>
				<td bgcolor="#55AAEE"><s:property value="MASTERLEVELNAME" /></td>
				<td  bgcolor="#55AAEE"><s:property
					value="TEACHINGHOURS" /></td>
				<td bgcolor="#55AAEE"><s:property value="PRACTICEHOURS" /></td>
				<td bgcolor="#55AAEE"><s:property value="EXPERIMENTHOURS" /></td>
				<td bgcolor="#55AAEE"><s:property value="COMPUTERHOURS" /></td>
				<td bgcolor="#55AAEE"><s:property value="COURSEDESIGNHOURS" /></td>
				<td bgcolor="#55AAEE"><s:property value="OTHERHOURS" /></td>
				<td bgcolor="#55AAEE"><s:property value="PRACTICENO" /></td>
               <td bgcolor="#55AAEE"><s:property value="REFERENCE" /></td>
			
			</tr>
		</s:iterator>
	</s:if>
	<!-- ���б�����Ϊ�յ�ʱ��Ҫ��ʾ����ʾ��Ϣ -->
</table>
</form>
</body>
</html>