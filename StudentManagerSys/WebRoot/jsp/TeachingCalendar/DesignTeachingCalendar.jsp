<%@ page contentType="text/html; charset=gbk" language="java" import="java.sql.*;" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>制定教学日历</title>
</head>
<script>
 function cform(){ 
		if(confirm("是否要提交？")) {
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
  <table align="center" width="60%"><tr align="center"><td  align="center"><font color="#00CCFF" size="+2"><s:property value="LESSONNAME"/>教学日历</font></td></tr></table>
<p>&nbsp;</p>
<table align="center" width="70%">
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">任课教师:</font><td align="left"><font color="#00CCFF" size="+1"><s:property value="TEACHERNAME"/></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">授课班级：</font><td align="left"><font color="#00CCFF" size="+1"><s:property value="HEAD"/></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">参考教材：</font><td align="left"><font color="#00CCFF" size="+1"><s:property value="MCbook.materialtital"/></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">学年学期：</font><td align="left"><font color="#00CCFF" size="+1"><s:property value="SEMESTER"/></font></td></tr>
</table>
<p>&nbsp;</p>
<hr />
<table  width="100%" border="1" align="center" bordercolor="#00CCFF"><tr align="center"><td align="center" width="" ><font color="#00CCFF" size="+1">周次</font></td><td align="center" width=""><font color="#00CCFF" size="+1">课次</font></td><td align="center" width=""><font color="#00CCFF" size="+1">知识点名称</font></td><td align="center" width=""><font color="#00CCFF" size="+1">掌握程度要求</font></td><td align="center" width=""><font color="#00CCFF" size="+1">授课学时</font></td><td align="center" width=""><font color="#00CCFF" size="+1">习题课学时</font></td><td align="center" width=""><font color="#00CCFF" size="+1">实验学时</font></td><td align="center" width=""><font color="#00CCFF" size="+1">上机学时</font></td><td align="center" width=""><font color="#00CCFF" size="+1">课程设计周数</font></td><td align="center" width=""><font color="#00CCFF" size="+1">其它环节学时</font></td><td align="center" width=""><font color="#00CCFF" size="+1">课外作业题号</font></td><td align="center" width=""><font color="#00CCFF" size="+1">参考资料及页码</font></td></tr>
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
<input  type="button" value="提交" onclick="return cform();"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="重置" onclick="reset();"/></center>
</form>
</body>
</html>
