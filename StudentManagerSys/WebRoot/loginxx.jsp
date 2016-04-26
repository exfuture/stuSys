<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>呼伦贝尔职业技术学院企业化班级管理系统登录</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<LINK href="css/classmates.css" type=text/css rel=stylesheet>
		<STYLE>
.logintitle {
	FONT-SIZE: 13px;
	COLOR: #555555;
	LINE-HEIGHT: 20px;
	FONT-FAMILY: 宋体;
	TEXT-DECORATION: none
}

.logintitle:link {
	COLOR: #005fa9;
	FONT-FAMILY: 宋体;
	TEXT-DECORATION: none
}

.logintitle:visited {
	COLOR: #005fa9;
	FONT-FAMILY: 宋体;
	TEXT-DECORATION: none
}

.logintitle:active {
	COLOR: #ff6600;
	FONT-FAMILY: 宋体;
	TEXT-DECORATION: none
}

.logintitle:hover {
	COLOR: #ff6600;
	FONT-FAMILY: 宋体;
	TEXT-DECORATION: none
}

.login1 {
	FONT-SIZE: 12px;
	COLOR: #555555;
	LINE-HEIGHT: 20px;
	FONT-FAMILY: 宋体;
	TEXT-DECORATION: none
}

.moduletitleTab .cur A:link {
	COLOR: #ff7e00;
	FONT-FAMILY: "?体", Arial, sans-serif;
	TEXT-DECORATION: none
}

.moduletitleTab .cur A:visited {
	COLOR: #ff7e00;
	FONT-FAMILY: "宋体", Arial, sans-serif;
	TEXT-DECORATION: none
}

#loginPage .moduletitleTab .cur A:link {
	COLOR: #ff7e00;
	FONT-FAMILY: "宋体", Arial, sans-serif;
	TEXT-DECORATION: none
}

#loginPage .moduletitleTab .cur A:visited {
	COLOR: #ff7e00;
	FONT-FAMILY: "宋体", Arial, sans-serif;
	TEXT-DECORATION: none
}

.lInnerLoginDiv {
	PADDING-RIGHT: 0px;
	BACKGROUND-POSITION: 0% 1%;
	PADDING-LEFT: 0px;
	Z-INDEX: 2;
	PADDING-BOTTOM: 0px;
	MARGIN: 0px;
	COLOR: #333;
	PADDING-TOP: 0px;
	BACKGROUND-REPEAT: no-repeat;
	BACKGROUND-COLOR: #ffffff
}
</STYLE>
	</HEAD>
	<script type="text/javascript">
	function checkForm(){
		var stuId = document.login.stuId.value;
		var stuPassword = document.login.stuPassword.value;
		if(stuId == ''){
			alert('请您输入用户名！');
			return false;
		}
		if(stuPassword == ''){
			alert('请您输入密码！');
			return false;
		}
		return true;
	}
	</script>
<BODY leftMargin=0 topMargin=0>
	<CENTER>
	<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
			<TR>
				<TD align=middle bgColor=#165890>
				<TABLE height=50 cellSpacing=0 cellPadding=0 width=755 border=0>
					<TBODY>
						<TR bgColor=#165890>
							<TD align=middle width=150 height=70>
								<IMG height=70 src="images/title11.gif" width=500>
							</TD>
							<TD bgColor=#165890>&nbsp;
											
							</TD>
						</TR>
					</TBODY>
				</TABLE>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width=755 border=0>
		<TBODY>
			<TR>
				<TD vAlign=top align=middle background=images/mob_bg.gif>
				<BR>
				<BR>
				<img height=30 src="images/login_pic11.gif" width=250><BR>
				<BR>
				<TABLE cellSpacing=0 cellPadding=0 width=650 border=0>
        			<TBODY>
        				<TR>
          					<TD width=11 height=11><IMG height=11 src="images/mob_br10.gif" 
            				width=11></TD>
          					<TD background=images/mob_bg7.gif><IMG height=11 
            				src="images/empty.gif" width=1></TD>
          					<TD width=16><IMG height=11 src="images/mob_br11.gif" 
          					width=16></TD>
						</TR>
        				<TR>
          					<TD background=images/mob_bg10.gif>&nbsp;</TD>
          					<TD class=logintitle align=middle bgColor=#ffffff height=150><!---->
            				<TABLE id=Table1 style="WIDTH: 100%">
  								<TBODY>
  									<TR align=middle>
    									<TD>
    									<form name=login action="<%=request.getContextPath()%>/login!login.action" method=post onSubmit="return checkForm();">
   										<TABLE>
       										<TBODY>
          										<TR>
            										<TD class=login1 width=55><SPAN id=logintext1>用户名： </SPAN></TD>
            										<TD><SPAN id=loginbox>
              											<INPUT class=newinput 
                        								style="BORDER-RIGHT: #c4ede9 1px solid; 
														BORDER-TOP: #c4ede9 1px solid; 
														BORDER-LEFT: #c4ede9 1px solid; WIDTH:
														90px; BORDER-BOTTOM: #c4ede9 1px solid;
														HEIGHT: 20px" 
                        								tabIndex=1 size=13 name=username>
            											</SPAN>
													</TD>
          										</TR>
          										<TR>
            										<TD class=login1><SPAN id=logintext2>密　码：</SPAN></TD>
            										<TD>
														<SPAN id=passwdbox>
	              										<INPUT id=password 
	                       							 	style="BORDER-RIGHT: #c4ede9 1px solid; 
														BORDER-TOP: #c4ede9 1px solid; 
														BORDER-LEFT: #c4ede9 1px solid; 
														WIDTH: 90px; BORDER-BOTTOM: #c4ede9 1px solid; 
														HEIGHT: 20px" 
	                        							tabIndex=2 type=password size=13 name=password>
	            										</SPAN> 
													</TD>	   
          										</TR>
												<tr><br></tr>
          										<TR vAlign=bottom align=middle>		
           	 									<TD colSpan=2>												
													<INPUT type="submit" value="登录"  width=61 border=0>
              										&nbsp;
													<SPAN id=regurl></SPAN> </TD>
          										</TR>
      										</TBODY>
      									</TABLE>
      									</form>
     							 		</TD>
  									</TR>
  								</TBODY>
            				</TABLE>
 							</TD>
          <TD background=images/mob_bg8.gif>&nbsp;</TD></TR>
        <TR>
          <TD><IMG height=16 src="images/mob_br13.gif" width=11></TD>
          <TD background=images/mob_bg9.gif><IMG height=16 
            src="images/empty.gif" width=1></TD>
          <TD><IMG height=16 src="images/mob_br12.gif" 
        width=16></TD></TR></TBODY></TABLE>
							<BR>
							<BR>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE cellSpacing=0 cellPadding=0 width=755 border=0>
				<TBODY>
					<TR>
						<TD height=10>
							<IMG height=10 src="images/empty.gif" width=1>
						</TD>
					</TR>
					<TR>
						<TD noWrap bgColor=#165890 height=2>
							<SPACER type="block" width="1">
						</TD>
					</TR>
					<TR>
						<TD noWrap height=10>
							<SPACER type="block" width="1">
						</TD>
					</TR>
					<TR>
						<TD class=gb2 noWrap align=middle height=22>
							<BR>
							呼伦贝尔职业技术学院信息工程系版权所有
							<BR>
							<FONT color=#ff0000></FONT>
						</TD>
					</TR>

				</TBODY>
			</TABLE>
		</CENTER>
	</BODY>
</HTML>
