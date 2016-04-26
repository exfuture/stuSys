<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<HTML><HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<link href="<%=request.getContextPath() %>/comm/style/head_index.css" rel="stylesheet" type="text/css" media="screen" />
<base target="_self">
<s:action id="login" name="login"/>
<script>
	function modifypsw(){
   		var dw=window.showModalDialog('<%= request.getContextPath() %>/jsp/xtgl/user/psw_.jsp','', 'dialogHeight:300px; dialogWidth:280px; dialogLeft:(screen.availWidth/2-100); dialogTop:(screen.availHeight/2-100);center: yes;help:no;resizable:no;status:yes');
	} 
	function closewindow(){ 
		parent.window.opener = null;
		parent.close();
	}
</script>
 <body>
    <table width="100%">
    	<tr>
    		<td width="75%">
    			<div id="logo">
					<h1>企业化学生管理系统</h1>
				</div>
			</td>
				<td width="374" background="<%=request.getContextPath() %>/comm/image/img01.jpg" valign="top">
				<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table4">
					<tr>
						<td>
						<div align="right">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table5">

							</table>
						</div>
						</td>
					</tr>
					<tr>
						<td height="20">　</td>
					</tr>
					<tr>
						<td>
						<div align="right" >
							<table border="0" width="1050" cellspacing="0" cellpadding="0" id="table6" height="23">
								<tr >
									<td height="38">&nbsp;</td>
								</tr>
								<tr >
									<td width="26"><img border="0" src="pwd.gif"></td>
									<td width="120" valign="middle"><font color="#FFFFFF"><a href="<%=request.getContextPath() %>/teacher!querySignPage.action" target="right"><font color="ffffff">查看教师签到情况</font></a></td>
									<td width="26"><img border="0" src="pwd.gif"></td>
									<td width="120" valign="middle"><font color="#FFFFFF"><a href="<%=request.getContextPath() %>/teacher!testA.action" target="right"><font color="ffffff">查看情况</font></a></td>
									<td width="26"><img border="0" src="pwd.gif"></td>
									<td width="120" valign="middle"><font color="#FFFFFF"><a href="<%=request.getContextPath() %>/teacher!signInPage.action" target="right"><font color="ffffff">教师签到</font></a></td>
									<td width="26"><img border="0" src="pwd.gif"></td>
									<td width="120" valign="middle"><font color="#FFFFFF"><a href="<%=request.getContextPath() %>/student!openDuty.action" target="_blank"><font color="ffffff">打开值班表页面</font></a></td>
									<td width="26"><img border="0" src="pwd.gif"></td>
									<td width="100" valign="middle"><font color="#FFFFFF"><a href="<%=request.getContextPath() %>/sys!queryUser.action" target="right"><font color="ffffff">密码修改</font></a></td>
									<td width="26"><img border="0" src="pwd.gif"></td>
									<td width="100" valign="middle"><font color="#FFFFFF"><a href="<%=request.getContextPath() %>/frame/right.htm" target="right"><font color="ffffff">显示首页</font></a></td>
									<td width="31"><p align="center"><img border="0" src="login.gif"></td>
									<td width="100" valign="middle"><a href="<%=request.getContextPath() %>/refresh.jsp" target="_top"><font color="ffffff">重新登录</font></a></td>
									<td width="31" valign="middle"><img border="0" src="back.gif"></td>
									<td width="100" valign="middle"><a href="javascript:closewindow();"><font color="ffffff">退出系统</font></a></td>									
									
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>			  </td>
    	</tr>

    </table>
    
  </body>
</HEAD>
