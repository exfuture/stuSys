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
<title>课程制定教学日历</title>
</head>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<!--按钮区域 -->

<form
	action="<%=request.getContextPath()%>/teachingCalendarAction!DesignTeachingCalendar.action"
	method="post" name="addTeachingProgramForm">
<table width="924" border="0" cellspacing="0" bordercolor="DDDDDD">
<tr><td>&nbsp;&nbsp;查询教学日历如下：</td>
</tr><br>
	<tr valign="middle"> 
		<td align="center">课程名称:
		<s:property value="LESSONNAME"/><td>
	</tr>
	<tr align="center">
		<td align="center">任课教师:
		<s:property value="TEACHERNAME"/><td>
	</tr>
	<tr align="center">
		<td align="center">授课班级:
		<s:property value="HEAD"/> </td>
	</tr>
	<tr align="center">
		<td align="center">学期学年:
		<s:property value="SEMESTER"/></td>
	</tr>
</table>


<!--标题行和数据行 -->
<table id="workItemList" width="924" border="0" cellspacing="0"
	bordercolor="DDDDDD" style="table-layout: fixed;" class="db"
	>
	<!--标题行 -->
	<tr align="center" valign="middle" height="28">
		<td align="center" class="tabletitle">周次</td>
		<td align="center" class="tabletitle">课次</td>
		<td class="tabletitle">知识点名称</td>
		<td class="tabletitle">掌握程度要求</td>
		<td class="tabletitle">授课学时</td>
		<td class="tabletitle">习题课学时</td>
		<td class="tabletitle">实验学时</td>
		<td class="tabletitle">上机学时</td>
		<td class="tabletitle">课程设计周数</td>
		<td class="tabletitle">其它环节学时</td>
		<td class="tabletitle">课外作业题号</td>
		<td class="tabletitle">参考资料及页码</td>
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
	<!-- 在列表数据为空的时候，要显示的提示信息 -->
</table>
</form>
</body>
</html>