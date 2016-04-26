<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<HTML>
	<HEAD>
		<TITLE>教学日历</TITLE>
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="bookmark" href="favicon.ico">
		<META content="MSHTML 6.00.2800.1276" name=GENERATOR>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<META http-equiv=Content-Style-Type content=text/css>
		<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
		<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
		<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
		<script language="javascript" src="../style/public.js"></script>
		<script type="text/javascript">	
		function add()
		{
			alert("提交");
			document.all.Form.submit();
		}
function FormTeachingCalendar()
{
	document.forms[0].action ="tc!madeTeachingCalendar.action";

    document.forms[0].submit();

}
function SeekTeachingCalendar()
{
	var url="jsp/TeachingCalendar/queryTC.jsp";
	window.location.href=url;
}
function go (index)
{	  if(index=="1")
   	  	{
      		
           		var url="traceTemplate.do?method=selectTemplateType&indexId=${traceTemplateForm.indexId }";
           
        }
}
function goBack()
{

var url="traceTemplate.do?method=approveManageIn";
	//alert(url);
	window.location.href=url;
}
	
		</script>


	</HEAD>
	<body marginwidth="0" topmargin="0" leftmargin="0 marginheight="0">
		<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
			<tr height="21">
			
				<td  height="21" align="left" valign="middle">
					<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
					<span class="pagetitle">教学日历管理</span>
				</td>
				<TD width=120 ALIGN="CENTER">
					<input type="submit" onclick="FormTeachingCalendar()"value="制定教学日历">
				</TD>
				<TD ALIGN="CENTER">
					<input type="submit" onclick="SeekTeachingCalendar()"value="查看教学日历">
				</TD>
	
			</tr>
		</table>
		<form name="Form"
			method="post">
			<table valign=middle  ALIGN=CENTER id="workItemList" width="80%" border="0" >
				<TR ALIGN=CENTER valign=middle >
					<TD  bgcolor="#5591DF"  ALIGN=CENTER valign=middle >
					<h2 valign=middle>教学日历填写说明</h2>
					</td>
				<tr>
					<td>
1.教学日历是教师组织课程教学的具体计划表,应明确规定教学进程,授课内容提要,各种教学环节,方式,课外作业的安排等;
2.实验课要写明实验名称,实验学时数;独立开设的实验课教学日历中还必须写明实验内容;习题课,课堂讨论和其它环节要注明题目和学时数;
3.公共课集体备课的课程,应在教学日历备注栏注明;
4.多名教师上同一班级同一门课程,应在教学日历中标明各个教师所讲授内容;
5.国庆节,五一节假期中不应安排教学内容;
6.教学日历中课程名称应与教学方案中对应课程名称一致;
7.教学日历一式二份,经系(室)主任,主管教学院长(部主任)签字后,任课教师留一份,另一份交教师所在学院(部),并由教师所在学院(部)负责检查,归档;
8.教学日历必须认真填写,在每学期第一周内交开课学院(部)备查.教学日历一经制订,不应出现大的变动,但允许主讲教师在完成课程教学大纲规定的教学要求前提下,进行必要的调整,以适应不断出现的新情况.如有变动,须经系(室)主任审查同意,主管教学院长批准,并报教务处备查.
					</TD>
				</TR>			
			</TABLE>

		</form>

	</body>
</HTML>

