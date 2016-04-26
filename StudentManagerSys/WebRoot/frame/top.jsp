<%@ page language="java" contentType="text/html;charset=utf-8"%>


<HTML><HEAD>

<TITLE></TITLE>
<LINK href="<%= request.getContextPath() %>/css/style.css" type=text/css rel=stylesheet>
<base target="_self">
<script>
	function modifypsw(){
   		var dw=window.showModalDialog('<%= request.getContextPath() %>/jsp/xtgl/user/psw_.jsp','', 'dialogHeight:300px; dialogWidth:280px; dialogLeft:(screen.availWidth/2-100); dialogTop:(screen.availHeight/2-100);center: yes;help:no;resizable:no;status:yes');
	} 
	function closewindow(){ 
		parent.window.opener = null;
		parent.close();
	}
</script>

</HEAD>
<BODY bgColor=#CEEBFF leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">


<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table1" height="27">
	<tr>
		<td>
		<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table2">
			<tr>
				<td width="420" background="<%= request.getContextPath() %>/frame/topbg.jpg" valign="bottom">
					<h3>图书管理系统<h3>
				</td>
				<td background="<%= request.getContextPath() %>/frame/topbg.jpg" valign="bottom">
				<div align="right">
				<table border="0" width="145" id="table7" cellspacing="0" cellpadding="0">
					<tr>
						<td width="150" height="24"></td>
					</tr>
					<tr>
					
						<td width="150" height="35"><p align="left"><font color="#FFFFFF">欢迎您：<b></b></font></td>
					</tr>
				</table>
				</div>
				</td>
				<td width="374" background="<%= request.getContextPath() %>/frame/topright.jpg" valign="top">
				<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table4">
					<tr>
						<td>
						<div align="right">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table5">
								<tr>
									<td height="19">
									<p align="center">
									<img border="0" src="<%= request.getContextPath() %>/frame/calendar.gif" align="right">&nbsp;</td>
									<td width="189"> <font color="#ffffff">今天是：</SCRIPT></font></td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
					<tr>
						<td height="20">　</td>
					</tr>
					<tr>
						<td>
						<div align="right">
							<table border="0" width="385" cellspacing="0" cellpadding="0" id="table6" height="23">
								<tr>
									<td width="26">
									<img border="0" src="<%= request.getContextPath() %>/frame/pwd.gif"></td>
									<td width="51" valign="middle">
									<font color="#FFFFFF"><a href="javascript:modifypsw();" ><font color="ffffff">更改口令</font></a></td>
									<td width="31"><p align="center">
									<img border="0" src="<%= request.getContextPath() %>/frame/login.gif"></td>
									<td width="55" valign="middle"><a href="<%=request.getContextPath() %>/login.jsp" target="_top"><font color="ffffff">重新登录</font></a></td>
									<td width="31" valign="middle">
									<img border="0" src="<%= request.getContextPath() %>/frame/back.gif"></td>
									<td width="55" valign="middle"><font color="#FFFFFF"><!--a  href="<%=request.getContextPath() %>/frame/top2.jsp"  target="_self"--><font color="#FFFFFF">任务提示</font><!--/a--></font></td>									
									
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>			  </td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" height="10" id="table3">
	<tr>
		<td style="border-bottom: 1px solid #ffffff; filter: progid:dximagetransform.microsoft.gradient(startcolorstr='#0075C4', endcolorstr='#ffffff', gradienttype='1'">　</td>
	</tr>
</table>

</BODY></HTML>