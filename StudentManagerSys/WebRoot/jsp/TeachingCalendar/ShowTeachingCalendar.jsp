<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*;" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ƶ���ѧ����</title>
</head>

<body>
<form  name="TeachingCalendarForm"  method="post">
  <p>&nbsp;</p>
  <table align="center" width="60%"><tr align="center"><td  align="center"><font color="#00CCFF" size="+4"><s:property value="LESSONNAME"/>��ѧ����</font></td></tr></table>
<p>&nbsp;</p>
<table align="center" width="70%">
<tr align="center"><td align="center"><font color="#00CCFF" size="+3">�ον�ʦ:</font><td align="left"><font color="#00CCFF" size="+3"><s:property value="TEACHERNAME"/></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+3">�ڿΰ༶��</font><td align="left"><font color="#00CCFF" size="+3"><s:property value="HEAD"/></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+3">�ο��̲ģ�</font><td align="left"><font color="#00CCFF" size="+3"><s:property value="MCbook.materialtital"/></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+3">ѧ��ѧ�ڣ�</font><td align="left"><font color="#00CCFF" size="+3"><s:property value="SEMESTER"/></font></td></tr>
</table>
<p>&nbsp;</p>
<hr />
<table align="left" width="100%"><tr align="center"><td align="center" width=""><font color="#00CCFF" size="+1">�ܴ�</font></td><td align="center" width=""><font color="#00CCFF" size="+1">�δ�</font></td><td align="center" width=""><font color="#00CCFF" size="+1">֪ʶ������</font></td><td align="center" width=""><font color="#00CCFF" size="+1">���ճ̶�Ҫ��</font></td><td align="center" width=""><font color="#00CCFF" size="+1">�ڿ�ѧʱ</font></td><td align="center" width=""><font color="#00CCFF" size="+1">ϰ���ѧʱ</font></td><td align="center" width=""><font color="#00CCFF" size="+1">ʵ��ѧʱ</font></td><td align="center" width=""><font color="#00CCFF" size="+1">�ϻ�ѧʱ</font></td><td align="center" width=""><font color="#00CCFF" size="+1">�γ��������</font></td><td align="center" width=""><font color="#00CCFF" size="+1">��������ѧʱ</font></td><td align="center" width=""><font color="#00CCFF" size="+1">������ҵ���</font></td><td align="center" width=""><font color="#00CCFF" size="+1">�ο����ϼ�ҳ��</font></td></tr>
<s:if test="teachincalendarList!=null">
		<s:iterator id="unit" value="teachincalendarList" status="i">
	<tr align="center" valign="middle" height="20" >
					<td align="center" bgcolor="#55AAEE"><s:property value="WEEKNO"/></td>
				<td align="center" bgcolor="#55AAEE" id="kuc"> 
					<s:property value="LESSONNO"/></td>
				<td bgcolor="#00CCFF">
					<s:property value="KNOWLEDGEPOINTNAME"/></td>
				<td bgcolor="#00CCFF">
			<s:property value="MASTERLEVELNAME"/></td>
				<td  bgcolor="#00CCFF">
					<s:property value="TEACHINGHOURS"/></td>
				<td bgcolor="#00CCFF">
				<s:property value="PRACTICEHOURS" /></td>
				<td bgcolor="#00CCFF">
					<s:property value="EXPERIMENTHOURS"/></td>
				<td bgcolor="#00CCFF">
				<s:property value="COMPUTERHOURS"/></td>
				<td bgcolor="#00CCFF">
				<s:property value="COURSEDESIGNHOURS"/></td>
				<td bgcolor="#00CCFF">
					<s:property value="OTHERHOURS"/></td>
				<td bgcolor="#00CCFF">  
					<s:property value="PRACTICENO"/></td>
				<td bgcolor="#00CCFF">
				<s:property value="REFERENCE"/></td>
	</tr>
	</s:iterator>
	</s:if>
	</table>
</form>
</body>
</html>
