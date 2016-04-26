<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>查询教学日历</title>

</head>
<script language="javascript">
 function  check()       
  {   
         var lesson;
         var user;
         var semester;
         var head;
         lesson=document.getElementById("LESSONID").value;
         user=document.getElementById("userno").value;
         semester=document.getElementById("SEMESTER").value;
         head=document.getElementById("HEAD").value;
         if(lesson=="")
        { alert("请输入课程编码!");
           LESSONID.focus();
         return false;
         }
         if(user==""){
         alert("请输入教师编号!");
         userno.focus();
         return document.SeekForm.submit();
         }
         if(semester==""){
         alert("请输入学期学年!");
         SEMESTER.focus();
         return false;
         }
         if(head==""){
         alert("请输入授课班级！");
         HEAD.focus();
         return false;
         }
       document.SeekForm.submit();
         return true;
  }   
  function reset(){
  document.SeekForm.reset();
  
  }
</script>
<body>
<form action="<%=request.getContextPath()%>/teachingCalendar!SeekCalendar.action" method="post" name="SeekForm"> 
  <table align="center" width="100%">
  <tr align="center"><td align="center"><font color="#00CCFF" size="+3">教学日历查询</font></td></tr>
  <p>&nbsp;</p>
   <p>&nbsp;</p>
    <p>&nbsp;</p>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">请输入查询条件：</font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">课程编号：<input type="text" id="LESSONID" name="LESSONID" /></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">教师编号：<input type="text" id="userno" name="userno" /></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">学期学年：<input type="text" id="SEMESTER" name="SEMESTER" /></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1">授课班级：<input type="text"id="HEAD" name="HEAD" /></font></td></tr>
<tr align="center"><td align="center"><font color="#00CCFF" size="+1"><input type="button" value="查询" onclick="check();"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="重置" onclick="reset();"/></font></td></tr>
</table></form>
</body>
</html>
