<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
  <LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
		function goBack()
		{
			var url="teachingProgram!teachingProgramingIndextemp.action";
			window.location.href=url;
		}
		
		function addTeachingProgram()
		{
			alert("�ύ");
			document.all.addTeachingProgramForm.submit();
		}
		//����뿪ʱ�ı�����ɫ
		function mouseout(rowIndex,i){
		 var table=document.getElementById("workItemList");
		 
		 if (rowIndex==0)
		    table.rows(i).style.backgroundColor="#F1F1F1";
		 else
		    table.rows(i).style.backgroundColor="#ffffff";
		}
		//������е�����λ�ã�ѡ�е�ǰ�е�checkbox1
		/*function cb(obj)
		{
		    if (event.srcElement.type!="checkbox")
		        obj.childNodes[1].childNodes[0].checked=obj.childNodes[1].childNodes[0].checked?false:true;
		}*/
		//ȫѡ��ѡ��
			function setsel(obj){
			  for(var i=0;i<=document.all("id").length-1;i++){
			  	document.all("id")[i].checked=obj.checked;
			  }
		}
		 	function go()
		    {
		       if(confirm("���Ƿ�ȷ����ѡ֪ʶ��?"))
		          alert("��ȷ��֪ʶ�㣡");
		       else
		          alert("����ѡ��");
		    }
			function fanhui(){
				var contextPath=document.all.contextPath.value;
				document.write("<form action='"+contextPath+"/selfAssessment!addTeachingCalendar.action' method='post' name=formx1 style='display:none'>");						
				document.write("</form>");
				document.formx1.submit();
				}			        
		</script>
</head>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">


	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">����ѡ����Ҫ���۵�֪ʶ��</span>
			</td>

		</tr>
	</table>
<br><br>
<!--��ť���� -->
<form
	action="<%=request.getContextPath()%>/expertAssessment!pingJia.action"
	method="post" name="addTeachingProgramForm"><input type=hidden
	name=contextPath value="<%=request.getContextPath()%>" /> <!--�����к������� -->


<table width="100%">
	<tr>
		<td width="85%"></td>
		<td ><INPUT TYPE="submit" value="ѡ��"></td>
	</tr>
</table>
<table width="80%" bgcolor="#55AAEE" align="center">
	<!--������ -->
	<tr align="center" valign="middle" height="28">
		<td width="2%" align="center" class="tabletitle">&nbsp;</td>
		<td align="center" class="tabletitle">֪ʶ������</td>
	</tr>
	<!--�ӿ��м������������� -->
	<s:if test="tcList!=null">
		<s:iterator id="point" value="tcList" status="j">
			<tr>
				<td width="2%" bgcolor="#FFFFFF" align="center"><input name="checkbox"
					type="checkbox" value="<s:property value="KNOWLEDGEPOINTCODE"/>"></td>				
				<td bgcolor="#FFFFFF" align="center"><s:property value="knowledgePointName" /></td>

			</tr>
		</s:iterator>
	</s:if>
</table>

	</form>
</body>
</html>