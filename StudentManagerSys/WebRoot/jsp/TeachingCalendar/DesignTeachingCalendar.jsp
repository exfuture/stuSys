<%@ page contentType="text/html; charset=gbk" language="java" import="java.sql.*;" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ƶ���ѧ����</title>
</head>
<script>
 function cform(){ 
		if(confirm("�Ƿ�Ҫ�ύ��")) {
		    TeachingCalendarForm.submit();
		
		 
		}else{
			return false;
		}
		   
	
		
	}   
 function reset(){
  document.SeekForm.reset();
  
  }
</script>

<body>
<form  name="TeachingCalendarForm"  method="post" action="<%=request.getContextPath() %>/teachingCalendar!FinishDesTeachingCalendar.action">
  <p>&nbsp;</p>
  <table align="center" width="60%"><tr align="center"><td  align="center"><font color="#00CCFF" size="+2"><s:property value="LESSONNAME"/>��ѧ����</font></td></tr></table>
<p>&nbsp;</p>
<table align="center" width="70%">
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">�ον�ʦ:</font><td align="left"><font color="#00CCFF" size="+1"><s:property value="TEACHERNAME"/></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">�ڿΰ༶��</font><td align="left"><font color="#00CCFF" size="+1"><s:property value="HEAD"/></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">�ο��̲ģ�</font><td align="left"><font color="#00CCFF" size="+1"><s:property value="MCbook.materialtital"/></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">ѧ��ѧ�ڣ�</font><td align="left"><font color="#00CCFF" size="+1"><s:property value="SEMESTER"/></font></td></tr>
</table>
<p>&nbsp;</p>
<hr />
<table  width="100%" border="1" align="center" bordercolor="#00CCFF"><tr align="center"><td align="center" width="" ><font color="#00CCFF" size="+1">�ܴ�</font></td><td align="center" width=""><font color="#00CCFF" size="+1">�δ�</font></td><td align="center" width=""><font color="#00CCFF" size="+1">֪ʶ������</font></td><td align="center" width=""><font color="#00CCFF" size="+1">���ճ̶�Ҫ��</font></td><td align="center" width=""><font color="#00CCFF" size="+1">�ڿ�ѧʱ</font></td><td align="center" width=""><font color="#00CCFF" size="+1">ϰ���ѧʱ</font></td><td align="center" width=""><font color="#00CCFF" size="+1">ʵ��ѧʱ</font></td><td align="center" width=""><font color="#00CCFF" size="+1">�ϻ�ѧʱ</font></td><td align="center" width=""><font color="#00CCFF" size="+1">�γ��������</font></td><td align="center" width=""><font color="#00CCFF" size="+1">��������ѧʱ</font></td><td align="center" width=""><font color="#00CCFF" size="+1">������ҵ���</font></td><td align="center" width=""><font color="#00CCFF" size="+1">�ο����ϼ�ҳ��</font></td></tr>
<s:if test="teachincalendarList!=null">
		<s:iterator id="unit" value="teachincalendarList" status="i">
	<tr align="center" valign="middle" height="20" >
				<td bgcolor="#00CCFF"width="5%">
					<s:property value="WEEKNO"/></td>
				<td align="center" width="7%"bgcolor="#00CCFF" id="kuc"> 
					<s:property value="LESSONNO"/></td>
				<td bgcolor="#00CCFF" width="12%">
					<s:property value="KNOWLEDGEPOINTNAME"/></td>
				<td bgcolor="#00CCFF" width="10%">
				<s:property value="MASTERLEVELNAME"/></td>
				<td  width="7%" bgcolor="#00CCFF">
					<s:property value="TEACHINGHOURS"/></td>
				<td width="7%" bgcolor="#00CCFF">
					<s:property value="PRACTICEHOURS" /></td>
				<td width="7%" bgcolor="#00CCFF">
					<s:property value="0"/></td>
				<td  width="7%" bgcolor="#00CCFF">
					<s:property value="0"/></td>
				<td width="7%" bgcolor="#00CCFF">
					<s:property value="0"/></td>
				<td  width="7%" bgcolor="#00CCFF">
					<s:property value="0"/></td>
				<td bgcolor="#00CCFF" width="12%"> <input type="text" name="pras[<s:property value="#i.index"/>]" value=""
					 /></td>
				<td bgcolor="#00CCFF" width="12%"><input type="text" name="refs[<s:property value="#i.index"/>]" value=""
					 /></td>
	</tr>
	</s:iterator></s:if>
	</table>
	<center>
<input  type="button" value="�ύ" onclick="return cform();"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="����" onclick="reset();"/></center>
</form>
</body>
</html>
