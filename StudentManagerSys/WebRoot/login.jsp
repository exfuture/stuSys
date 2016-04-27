<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
 
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>用户登录</TITLE><LINK 
href="images/Default.css" type=text/css rel=stylesheet><LINK 
href="images/xtree.css" type=text/css rel=stylesheet><LINK 
href="images/User_Login.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content="MSHTML 6.00.6000.16674" name=GENERATOR></HEAD>
<script type="text/javascript">
	function tijiao(){
		var stuId = document.login.TxtUserName.value;
		var stuPassword = document.login.TxtPassword.value;
		if(stuId == ''){
			alert('请您输入用户名！');
		}else if(stuPassword == ''){
			alert('请您输入密码！');
		}else{
			document.login.submit();
		}		
	}
</script>
<BODY id=userlogin_body>
<DIV></DIV>
<%
	long s=(Calendar.getInstance()).getTimeInMillis();
 %>
<form name=login action="<%=request.getContextPath()%>/login!login.action?loginId=<%=s %>" method=post >
<DIV id=user_login>
<DL>
  <dd id="user_top"> 
  <ul> 
    <li class="user_top_l"><br></li> 
    <li class="user_top_c"><br></li> 
    <li class="user_top_r"><br></li></ul> 
  <dd id="user_main"> 
  <ul> 
    <li class="user_main_l"><br></li> 
    <li class="user_main_c"> 
    <div class="user_main_box"> 
    <ul> 
      <li class="user_main_text">用户名： </li> 
      <li class="user_main_input"><input class="TxtUserNameCssClass" id="TxtUserName" maxlength="20" name="username"> </li></ul> 
    <ul> 
      <li class="user_main_text">密 码：  </li> 
      <li class="user_main_input"><input type="password" class="TxtPasswordCssClass" id="TxtPassword" name="password"> </li></ul> 
    <ul> 
      <li class="user_main_text">Cookie： </li> 
      <li class="user_main_input"><select id="DropExpiration" name="DropExpiration">  
        <option value="None" selected>不保存</option> <option value="Day">保存一天</option>  
        <option value="Month">保存一月</option> <option value="Year">保存一年</option></select> </li></ul></div></li> 
    <li class="user_main_r">
    <input type="image" class="IbtnEnterCssClass" id="IbtnEnter" style="border-width: 0px;" onclick='tijiao();return(false);'  src="images/user_botton.gif" name="IbtnEnter"> </li></ul> 
  </dd></dd><dt><br></dt></DL></DIV><SPAN id=ValrUserName 
style="DISPLAY: none; COLOR: red"></SPAN><SPAN id=ValrPassword 
style="DISPLAY: none; COLOR: red"></SPAN><SPAN id=ValrValidateCode 
style="DISPLAY: none; COLOR: red"></SPAN>
<DIV id=ValidationSummary1 style="DISPLAY: none; COLOR: red"></DIV>
</form>
<DIV>


</FORM></BODY></HTML>
