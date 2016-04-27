<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息工程系值班表</title>
</head>
<script type="text/javascript">
            function tanchu(j){        
               window.open (j,"Sample",
               "fullscreen=no,toolbar=yes,location=no,directories=no,status=yes,menubar=yes,scrollbars=yes,resizable=yes, copyhistory=no,width=550,height=640,left=600,top=300");
            }
            
            function tishi(){          
              alert("双击弹出学生选择对话框");
            }
           
			function checkform(){
				for (i=0;i<document.form1.length;i++){
				        if(document.form1.elements[i].value==""){
				        alert("元素不能为空!");
				        document.form1.elements[i].focus();
				        return false;				        
				        }
				}
				document.form1.submit();
				alert("操作成功");
			}

</script>
<style>
BODY {
background: url('<%=request.getContextPath() %>/duty/images/back.gif') repeat-x;

}
</style></HEAD>
<BODY BGCOLOR=#FFFFFF topmargin="0" leftmargin="0" marginheight=0 marginwidth=0 rightmargin=0 bottommargin=0">
<TABLE WIDTH=775 BORDER=0 CELLPADDING=0 CELLSPACING=0>
	<TR>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=254 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=6 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=131 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=71 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=74 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=78 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=75 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=74 HEIGHT=1></TD>
		<TD>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/spacer.gif" WIDTH=12 HEIGHT=1></TD>
	</TR>
	<TR>
		<TD COLSPAN=3 ROWSPAN=2>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_01.jpg" width="391" height="159"></TD>
		<TD COLSPAN=5>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_02.gif" width="384" height="71"></TD>
	</TR>
	<TR>
		<TD>
			<a href="<%=request.getContextPath() %>/duty/queryDuty1.jsp" target="_blank">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_03_conew1.gif" border="0" width="71" height="88"></a></TD>
		<!-- 
		<TD>
			<a href="<%=request.getContextPath() %>/duty/index.html">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_04.gif" border="0" width="74" height="88"></a></TD>
		<TD>
			<a href="index.html">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_05.gif" border="0" width="78" height="88"></a></TD>
		<TD>
			<a href="index.html">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_06.gif" border="0" width="75" height="88"></a></TD>
		<TD COLSPAN=2>
			<a href="index.html">
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_07.gif" border="0" width="86" height="88"></a></TD>
	</TR>
	 -->
	<TR>
		<TD ROWSPAN=2 bgcolor="#E9E9E9" valign="top">&nbsp;</TD>
		<TD COLSPAN=8>
			<IMG SRC="<%=request.getContextPath() %>/duty/images/index_09.gif" width="521" height="21"></TD>
	</TR>
	<TR>
		<TD background="<%=request.getContextPath() %>/duty/images/index_10.gif">&nbsp;
	  </TD>
		<TD WIDTH=503 HEIGHT=420 COLSPAN=6 BGCOLOR=#FFFFFF valign="top">
		<form name="form1" action="<%=request.getContextPath() %>/student!saveDuty.action" method="post">
	<!-- 学期传值 -->
	<input type="hidden"  name="classDutyList[0].term" value="2014-2015 第一学期" size="5">
    <input type="hidden"  name="classDutyList[1].term" value="2014-2015 第一学期" size="5">
    <input type="hidden"  name="classDutyList[2].term" value="2014-2015 第一学期" size="5">
    <input type="hidden"  name="classDutyList[3].term" value="2014-2015 第一学期" size="5">
    <input type="hidden"  name="classDutyList[4].term" value="2014-2015 第一学期" size="5">
    <input type="hidden"  name="classDutyList[5].term" value="2014-2015 第一学期" size="5">
    <input type="hidden"  name="classDutyList[6].term" value="2014-2015 第一学期" size="5">
	<input type="hidden"  name="classDutyList[7].term" value="2014-2015 第一学期" size="5">
    <!-- 班级编号传值 -->
	<input type="hidden"  name="classDutyList[0].classNo" value="xx201502jsj" size="5">
    <input type="hidden"  name="classDutyList[1].classNo" value="1401" size="5">
    <input type="hidden"  name="classDutyList[2].classNo" value="1202" size="5">
    <input type="hidden"  name="classDutyList[3].classNo" value="1403" size="5">
    <input type="hidden"  name="classDutyList[4].classNo" value="xx201501jsj" size="5">
    <input type="hidden"  name="classDutyList[5].classNo" value="1302" size="5">
    <input type="hidden"  name="classDutyList[6].classNo" value="xx201503jsj" size="5">
	<input type="hidden"  name="classDutyList[7].classNo" value="1402" size="5">
    <!-- 班级名称传值 -->
	<input type="hidden"  name="classDutyList[0].className" value="2015级3+2" size="5">
    <input type="hidden"  name="classDutyList[1].className" value="2014级大专" size="5">
    <input type="hidden"  name="classDutyList[2].className" value="2012级3+2" size="5">
    <input type="hidden"  name="classDutyList[3].className" value="2014级中专" size="5">
    <input type="hidden"  name="classDutyList[4].className" value="2015级大专" size="5">
    <input type="hidden"  name="classDutyList[5].className" value="2013级3+2" size="5">
    <input type="hidden"  name="classDutyList[6].className" value="2015级中专" size="5">
	<input type="hidden"  name="classDutyList[7].className" value="2014级3+2" size="5">
	<!-- 应出勤人数传值 -->    
	<input type="hidden"  name="classDutyList[0].ycq" value="20" size="5">
    <input type="hidden"  name="classDutyList[1].ycq" value="27" size="5">
    <input type="hidden"  name="classDutyList[2].ycq" value="31" size="5">
    <input type="hidden"  name="classDutyList[3].ycq" value="11" size="5">
    <input type="hidden"  name="classDutyList[4].ycq" value="40" size="5">
    <input type="hidden"  name="classDutyList[5].ycq" value="22" size="5">
    <input type="hidden"  name="classDutyList[6].ycq" value="23" size="5">
	<input type="hidden"  name="classDutyList[7].ycq" value="15" size="5">
<table width="100%" height="764" border="1">
  <tr>
      <td height="99" colspan="14" align="center" valign="middle"><p> <br></p>
        <h1><strong>（2013-2014第一学期）信息工程系值班表</strong></h1> <font size="3">值班人：<s:property value="userName" /></font>&nbsp;&nbsp;&nbsp;<font size="3">日期：<s:property value="today" /></font>
         &nbsp;&nbsp;&nbsp;<input type="button" value="提交" onClick="checkform();"/>
      <p>&nbsp;</p></td> 
  </tr>
  <tr>
    <td colspan="4" align="center" valign="middle">班级</td>
    <td width="74" align="center" valign="middle">2015（3+2）</td>
    <td width="77" align="center" valign="middle">2014大专</td> 
    <td width="78" align="center" valign="middle">2012（3+2）</td>
    <td width="81" align="center" valign="middle">2014中专</td>
    <td width="79" align="center" valign="middle">2015大专</td>
    <td width="80" align="center" valign="middle">2013（3+2）</td>
    <td width="77" align="center" valign="middle">2015中专</td>
	<td width="77" align="center" valign="middle">2014（3+2）</td>
  </tr>
  <tr align="center" valign="middle">
    <td width="52" rowspan="10"><p>晚</p>
    <p>自</p>
    <p>习</p>
    <p>&nbsp;</p>
    <p>19:00</p>
    <p>到</p>
    <p>20:30</p>
    <p>&nbsp;</p></td>
    <td width="80">应出勤</td>
    <td colspan="2" rowspan="6"><p>人</p>
    <p>数</p></td>
    <td>20</td>
    <td>27</td>
    <td>31</td>
    <td>11</td>
    <td>40</td>
    <td>22</td>
    <td>23</td>
    <td>22</td>
  </tr>
  <tr align="center" valign="middle">
    <td>实出勤</td>
    <td><input type="text" id="1102scq" name="classDutyList[0].scq" size="5" value="20"></td>
    <td><input type="text" id="1401scq" name="classDutyList[1].scq" size="5" value="25"></td>
    <td><input type="text" id="1202scq" name="classDutyList[2].scq" size="5" value="28"></td>
    <td><input type="text" id="1403scq" name="classDutyList[3].scq" size="5" value="11"></td>
    <td><input type="text" id="1301scq" name="classDutyList[4].scq" size="5" value="40"></td>
    <td><input type="text" id="1302scq" name="classDutyList[5].scq" size="5" value="24"></td>
    <td><input type="text" id="1303scq" name="classDutyList[6].scq" size="5" value="23"></td>
	<td><input type="text" id="1402scq" name="classDutyList[7].scq" size="5" value="23"></td>
  </tr>
  <tr align="center" valign="middle">
    <td>选修</td>
    <td><input type="text" id="1102xx" name="classDutyList[0].xx" size="5" value="0"></td>
    <td><input type="text" id="1401xx" name="classDutyList[1].xx" size="5" value="0"></td>
    <td><input type="text" id="1202xx" name="classDutyList[2].xx" size="5" value="0"></td>
    <td><input type="text" id="1403xx" name="classDutyList[3].xx" size="5" value="0"></td>
    <td><input type="text" id="1301xx" name="classDutyList[4].xx" size="5" value="0"></td>
    <td><input type="text" id="1302xx" name="classDutyList[5].xx" size="5" value="0"></td>
    <td><input type="text" id="1303xx" name="classDutyList[6].xx" size="5" value="0"></td>
    <td><input type="text" id="1402xx" name="classDutyList[7].xx" size="5" value="0"></td>	
  </tr>
  <tr align="center" valign="middle">
    <td>事假</td>
    <td><input type="text" id="1102sj" name="classDutyList[0].sj" size="5"  value="0"></td>
    <td><input type="text" id="1401sj" name="classDutyList[1].sj" size="5" value="0"></td>
    <td><input type="text" id="1202sj" name="classDutyList[2].sj" size="5" value="0"></td>
    <td><input type="text" id="1403sj" name="classDutyList[3].sj" size="5" value="0"></td>
    <td><input type="text" id="1301sj" name="classDutyList[4].sj" size="5" value="0"></td>
    <td><input type="text" id="1302sj" name="classDutyList[5].sj" size="5" value="0"></td>
    <td><input type="text" id="1303sj" name="classDutyList[6].sj" size="5" value="0"></td> 
    <td><input type="text" id="1402sj" name="classDutyList[7].sj" size="5" value="0"></td>
  </tr>
  <tr align="center" valign="middle">
    <td>病假</td>
    <td><input type="text" id="1102bj" name="classDutyList[0].bj" size="5" value="0"></td>
    <td><input type="text" id="1401bj" name="classDutyList[1].bj" size="5" value="0"></td>
    <td><input type="text" id="1202bj" name="classDutyList[2].bj" size="5" value="0" ></td>
    <td><input type="text" id="1403bj" name="classDutyList[3].bj" size="5" value="0"></td>
    <td><input type="text" id="1301bj" name="classDutyList[4].bj" size="5" value="0"></td>
    <td><input type="text" id="1302bj" name="classDutyList[5].bj" size="5" value="0"></td>
    <td><input type="text" id="1303bj" name="classDutyList[6].bj" size="5" value="0"></td>
	<td><input type="text" id="1402bj" name="classDutyList[7].bj" size="5" value="0"></td>
  </tr>
  <tr align="center" valign="middle">
    <td>无故缺勤</td>
    <td><input type="text" id="1102wgqq" name="classDutyList[0].wgqq" size="5" value="0"></td>
    <td><input type="text" id="1401wgqq" name="classDutyList[1].wgqq" size="5" value="0"></td>
    <td><input type="text" id="1202wgqq" name="classDutyList[2].wgqq" size="5" value="0"></td>
    <td><input type="text" id="1403wgqq" name="classDutyList[3].wgqq" size="5" value="0"></td>
    <td><input type="text" id="1301wgqq" name="classDutyList[4].wgqq" size="5" value="0"></td>
    <td><input type="text" id="1302wgqq" name="classDutyList[5].wgqq" size="5" value="0"></td>
    <td><input type="text" id="1303wgqq" name="classDutyList[6].wgqq" size="5" value="0"></td>
	<td><input type="text" id="1402wgqq" name="classDutyList[7].wgqq" size="5" value="0"></td>
  </tr>
  <tr align="center" valign="middle">
    <td height="337">无故缺勤人姓名</td>
    <td colspan="2">&nbsp;></td>
    <td><font color="red">双击弹出学生选择对话框</font><textarea id="1102qqrxm" name="classDutyList[0].wgqqxm" rows="20" cols="10"  ondblclick="tanchu('<%=request.getContextPath() %>/student!studentInClass.action?classNo=1101');"  readonly="true">无缺勤</textarea></td>
    <td><font color="red">双击弹出学生选择对话框</font><textarea id="1401qqrxm" name="classDutyList[1].wgqqxm" rows="20" cols="10"  ondblclick="tanchu('<%=request.getContextPath() %>/duty/tanchukuang1401.jsp');"  readonly="true">无缺勤</textarea></td>
    <td><font color="red">双击弹出学生选择对话框</font><textarea id="1202qqrxm" name="classDutyList[2].wgqqxm" rows="20" cols="10"  ondblclick="tanchu('<%=request.getContextPath() %>/duty/tanchukuang1202.jsp');"  readonly="true">无缺勤</textarea></td>
    <td><font color="red">双击弹出学生选择对话框</font><textarea id="1403qqrxm" name="classDutyList[3].wgqqxm" rows="20" cols="10"  ondblclick="tanchu('<%=request.getContextPath() %>/duty/tanchukuang1403.jsp');"  readonly="true">无缺勤</textarea></td>
    <td><font color="red">双击弹出学生选择对话框</font><textarea id="1301qqrxm" name="classDutyList[4].wgqqxm" rows="20" cols="10"  ondblclick="tanchu('<%=request.getContextPath() %>/duty/tanchukuang1201.jsp');"  readonly="true">无缺勤</textarea></td>
    <td><font color="red">双击弹出学生选择对话框</font><textarea id="1302qqrxm" name="classDutyList[5].wgqqxm" rows="20" cols="10"  ondblclick="tanchu('<%=request.getContextPath() %>/duty/tanchukuang1302.jsp');"  readonly="true">无缺勤</textarea></td>
    <td><font color="red">双击弹出学生选择对话框</font><textarea id="1303qqrxm" name="classDutyList[6].wgqqxm" rows="20" cols="10"  ondblclick="tanchu('<%=request.getContextPath() %>/duty/tanchukuang1301.jsp');"  readonly="true">无缺勤</textarea></td>
	<td><font color="red">双击弹出学生选择对话框</font><textarea id="1402qqrxm" name="classDutyList[7].wgqqxm" rows="20" cols="10"  ondblclick="tanchu('<%=request.getContextPath() %>/duty/tanchukuang1402.jsp');"  readonly="true">无缺勤</textarea></td>
  </tr>
  <tr align="center" valign="middle">
    <td height="44">纪律</td>
    <td colspan="2" rowspan="2"><p>优</p>
    <p>良</p>
    <p>差</p></td>
    <td><select name="classDutyList[0].jl" id="classDutyList[0].jl" >
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select id="classDutyList[1].jl" name="classDutyList[1].jl">
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[2].jl" name="classDutyList[2].jl">
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[3].jl" name="classDutyList[3].jl">
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[4].jl" name="classDutyList[4].jl">
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[5].jl" name="classDutyList[5].jl">
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[6].jl" name="classDutyList[6].jl">
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[7].jl" name="classDutyList[7].jl">
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
  </tr>
  <tr align="center" valign="middle">
    <td height="37">卫生</td>
    <td><select  id="classDutyList[0].ws" name="classDutyList[0].ws" >
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[1].ws" name="classDutyList[1].ws" >
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[2].ws" name="classDutyList[2].ws" >
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[3].ws" name="classDutyList[3].ws" >
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select id="classDutyList[4].ws" name="classDutyList[4].ws" >
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select id="classDutyList[5].ws" name="classDutyList[5].ws" >
      <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[6].ws" name="classDutyList[6].ws" >
       <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
    <td><select  id="classDutyList[7].ws" name="classDutyList[7].ws" >
       <option value="优" >优</option>
      <option value="良">良</option>
      <option value="差">差</option>
    </select></td>
  </tr>
  <tr align="center" valign="middle">
    <td>班级/机房</td>
    <td colspan="2">&nbsp;</td>
    <td><select  id="classDutyList[0].bjorjf" name="classDutyList[0].bjorjf" >
      <option value="班级">班级</option>
      <option value="机房">机房</option>
    </select></td>
    <td><select id="classDutyList[1].bjorjf" name="classDutyList[1].bjorjf">
      <option value="班级">班级</option>
      <option value="机房">机房</option>
    </select></td>
    <td><select  id="classDutyList[2].bjorjf" name="classDutyList[2].bjorjf" >
      <option value="班级">班级</option>
      <option value="机房">机房</option>
    </select></td>
    <td><select  id="classDutyList[3].bjorjf" name="classDutyList[3].bjorjf" >
      <option value="班级">班级</option>
      <option value="机房">机房</option>
    </select></td>
    <td><select  id="classDutyList[4].bjorjf" name="classDutyList[4].bjorjf">
      <option value="班级">班级</option>
      <option value="机房">机房</option>
    </select></td>
    <td><select  id="classDutyList[5].bjorjf" name="classDutyList[5].bjorjf">
      <option value="班级">班级</option>
      <option value="机房">机房</option>
    </select></td>
    <td><select  id="classDutyList[6].bjorjf" name="classDutyList[6].bjorjf">
      <option value="班级">班级</option>
      <option value="机房">机房</option>
    </select></td>
	<td><select  id="classDutyList[7].bjorjf" name="classDutyList[7].bjorjf">
      <option value="班级">班级</option>
      <option value="机房">机房</option>
    </select></td>
  </tr>
</table>
</form>
</TD>
		<TD background="images/index_12.gif">&nbsp;
	  </TD>
	</TR>
</TABLE>
<img src="<%=request.getContextPath() %>/duty/images/index_08.jpg" width="254" height="441">
<!-- End ImageReady Slices -->
</BODY>



</html>