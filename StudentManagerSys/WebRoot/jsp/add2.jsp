<%@ page language="java" contentType="text/html; charset=GBK"%>

<%@ taglib prefix="s" uri="/struts-tags"  %>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<form action="<%=request.getContextPath() %>/edu!add.action" method="post">
<TABLE border="1" width="100%">
	<TR >
		<td width="20%">���</td>
		<td>
			<INPUT TYPE="text" NAME="teachingProgram.AGENTID">
		</td>
		<td>
				<s:select label="���пγ�"
				       name="lessonCode"
				       list="lessonList"
				       listKey="code"
				       listValue="name"	
				/>	
	
		</td>


		
	</TR>
	<tr >
		<td width="20%">רҵ</td>
		<td>
		<SELECT NAME="teachingProgram.LESSONDEPARTMENT" >
			<option value="�������ѧ�뼼��" SELECTed>�������ѧ�뼼��</option>
			<option value="�������">�������</option>
			<option value="����ͨ��" >����ͨ��</option>
		</SELECT>
		</td>
	</tr>
	<tr>
		<td width="20%">���ճ̶�</td>
		<td>
		<INPUT TYPE="radio" NAME="teachingProgram.MASTERLEVEL" value="1">�˽�
		</td>
		<td>
		<INPUT TYPE="radio" NAME="teachingProgram.MASTERLEVEL" value="2">���
		</td>
		<td>
		<INPUT TYPE="radio" NAME="teachingProgram.MASTERLEVEL" value="3">����
		</td>
	</tr>
	<tr>
		<td width="20%">�ص��ѵ�</td>
		<td>
  		<INPUT TYPE="radio" NAME="teachingProgram.PROFESSIONCODE" value="0">���ص��ѵ�
		</td>
		<td width="20%">
  		<INPUT TYPE="radio" NAME="teachingProgram.PROFESSIONCODE" value="1">�ص�
		</td>
		<td width="20%">
  		<INPUT TYPE="radio" NAME="teachingProgram.PROFESSIONCODE" value="2">�ѵ�
		</td>
		<td width="20%">
  		<INPUT TYPE="radio" NAME="teachingProgram.PROFESSIONCODE" value="1">�ص��ѵ�
		</td>
	</tr>
	<tr>
		<td>ѧʱ��</td>
		<td>
		<INPUT TYPE="text" NAME="teachingProgram.IMPORTANT_HARD">
		</td>
	</tr>
		<tr>
		<td>�汾</td>
		<td>
		<INPUT TYPE="text" NAME="teachingProgram.EDITION">
		</td>
	</tr>
	<tr>
		<td>����Ժϵ</td>
		<td>
  		<SELECT NAME="teachingProgram.LESSONDEPARTMENT" >
			<option value="��������ϢѧԺ" SELECTed>��������ϢѧԺ</option>
			<option value="���������ѧԺ">���������ѧԺ</option>
			<option value="���̹���ѧԺ" >���̹���ѧԺ</option>
		</SELECT>
		</td>
	</tr>
	<tr>
			<INPUT TYPE="submit" VALUE="����" >
	</tr>

</TABLE>
</form>