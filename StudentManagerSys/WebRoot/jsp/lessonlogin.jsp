<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lessonlogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 <LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">

  </head>
  <script type="text/javascript">
  function directResetLessonPassword()
  {
	document.write("<form action='teachingProgram!resetLessonPassword.action' method='post' name=formx1 style='display:none'>");
	document.write("</form>");
	document.formx1.submit();
	}
  
  
  </script>
  
  <body>
	<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">请输入密码验证</span>
			</td>


		</tr>
	</table>
<br><br>
    <form action="teachingProgram!checkLessonPassword.action" method="post" name="lessonloginform">
<div align="center">
  <table width="80%" bgcolor="#55AAEE" align="center">
    <tr align="center" valign="middle" height="28">
      <td align="center" class="tabletitle">请输入密码:</td>
      <td bgcolor="#FFFFFF" align="center"><input type="password" name="lessonpassword" /> </td>
    </tr>
    <tr align="center" valign="middle" height="28">
      <td align="center" class="tabletitle"></td>
      <td bgcolor="#FFFFFF" align="center"><div align="center">
        <input name="submit" type="submit" value="提交" />
      </div>
    </tr>
  </table>

</div>
  </form>
  </body>
</html>
