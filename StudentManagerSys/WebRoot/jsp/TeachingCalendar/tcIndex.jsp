<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<HTML>
	<HEAD>
		<TITLE>��ѧ����</TITLE>
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
			alert("�ύ");
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
					<span class="pagetitle">��ѧ��������</span>
				</td>
				<TD width=120 ALIGN="CENTER">
					<input type="submit" onclick="FormTeachingCalendar()"value="�ƶ���ѧ����">
				</TD>
				<TD ALIGN="CENTER">
					<input type="submit" onclick="SeekTeachingCalendar()"value="�鿴��ѧ����">
				</TD>
	
			</tr>
		</table>
		<form name="Form"
			method="post">
			<table valign=middle  ALIGN=CENTER id="workItemList" width="80%" border="0" >
				<TR ALIGN=CENTER valign=middle >
					<TD  bgcolor="#5591DF"  ALIGN=CENTER valign=middle >
					<h2 valign=middle>��ѧ������д˵��</h2>
					</td>
				<tr>
					<td>
1.��ѧ�����ǽ�ʦ��֯�γ̽�ѧ�ľ���ƻ���,Ӧ��ȷ�涨��ѧ����,�ڿ�������Ҫ,���ֽ�ѧ����,��ʽ,������ҵ�İ��ŵ�;
2.ʵ���Ҫд��ʵ������,ʵ��ѧʱ��;���������ʵ��ν�ѧ�����л�����д��ʵ������;ϰ���,�������ۺ���������Ҫע����Ŀ��ѧʱ��;
3.�����μ��屸�εĿγ�,Ӧ�ڽ�ѧ������ע��ע��;
4.������ʦ��ͬһ�༶ͬһ�ſγ�,Ӧ�ڽ�ѧ�����б���������ʦ����������;
5.�����,��һ�ڼ����в�Ӧ���Ž�ѧ����;
6.��ѧ�����пγ�����Ӧ���ѧ�����ж�Ӧ�γ�����һ��;
7.��ѧ����һʽ����,��ϵ(��)����,���ܽ�ѧԺ��(������)ǩ�ֺ�,�ον�ʦ��һ��,��һ�ݽ���ʦ����ѧԺ(��),���ɽ�ʦ����ѧԺ(��)������,�鵵;
8.��ѧ��������������д,��ÿѧ�ڵ�һ���ڽ�����ѧԺ(��)����.��ѧ����һ���ƶ�,��Ӧ���ִ�ı䶯,������������ʦ����ɿγ̽�ѧ��ٹ涨�Ľ�ѧҪ��ǰ����,���б�Ҫ�ĵ���,����Ӧ���ϳ��ֵ������.���б䶯,�뾭ϵ(��)�������ͬ��,���ܽ�ѧԺ����׼,�������񴦱���.
					</TD>
				</TR>			
			</TABLE>

		</form>

	</body>
</HTML>

