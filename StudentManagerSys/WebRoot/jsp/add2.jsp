<%@ page language="java" contentType="text/html; charset=GBK"%>

<%@ taglib prefix="s" uri="/struts-tags"  %>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<form action="<%=request.getContextPath() %>/edu!add.action" method="post">
<TABLE border="1" width="100%">
	<TR >
		<td width="20%">编号</td>
		<td>
			<INPUT TYPE="text" NAME="teachingProgram.AGENTID">
		</td>
		<td>
				<s:select label="所有课程"
				       name="lessonCode"
				       list="lessonList"
				       listKey="code"
				       listValue="name"	
				/>	
	
		</td>


		
	</TR>
	<tr >
		<td width="20%">专业</td>
		<td>
		<SELECT NAME="teachingProgram.LESSONDEPARTMENT" >
			<option value="计算机科学与技术" SELECTed>计算机科学与技术</option>
			<option value="软件工程">软件工程</option>
			<option value="电子通信" >电子通信</option>
		</SELECT>
		</td>
	</tr>
	<tr>
		<td width="20%">掌握程度</td>
		<td>
		<INPUT TYPE="radio" NAME="teachingProgram.MASTERLEVEL" value="1">了解
		</td>
		<td>
		<INPUT TYPE="radio" NAME="teachingProgram.MASTERLEVEL" value="2">理解
		</td>
		<td>
		<INPUT TYPE="radio" NAME="teachingProgram.MASTERLEVEL" value="3">掌握
		</td>
	</tr>
	<tr>
		<td width="20%">重点难点</td>
		<td>
  		<INPUT TYPE="radio" NAME="teachingProgram.PROFESSIONCODE" value="0">非重点难点
		</td>
		<td width="20%">
  		<INPUT TYPE="radio" NAME="teachingProgram.PROFESSIONCODE" value="1">重点
		</td>
		<td width="20%">
  		<INPUT TYPE="radio" NAME="teachingProgram.PROFESSIONCODE" value="2">难点
		</td>
		<td width="20%">
  		<INPUT TYPE="radio" NAME="teachingProgram.PROFESSIONCODE" value="1">重点难点
		</td>
	</tr>
	<tr>
		<td>学时数</td>
		<td>
		<INPUT TYPE="text" NAME="teachingProgram.IMPORTANT_HARD">
		</td>
	</tr>
		<tr>
		<td>版本</td>
		<td>
		<INPUT TYPE="text" NAME="teachingProgram.EDITION">
		</td>
	</tr>
	<tr>
		<td>开课院系</td>
		<td>
  		<SELECT NAME="teachingProgram.LESSONDEPARTMENT" >
			<option value="电子与信息学院" SELECTed>电子与信息学院</option>
			<option value="电气与控制学院">电气与控制学院</option>
			<option value="工商管理学院" >工商管理学院</option>
		</SELECT>
		</td>
	</tr>
	<tr>
			<INPUT TYPE="submit" VALUE="建立" >
	</tr>

</TABLE>
</form>