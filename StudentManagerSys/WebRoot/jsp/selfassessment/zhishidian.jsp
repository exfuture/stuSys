<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="style/lx_oa.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
		function goBack()
		{
			var url="teachingProgram!teachingProgramingIndextemp.action";
			window.location.href=url;
		}
		
		function addTeachingProgram()
		{
			alert("提交");
			document.all.addTeachingProgramForm.submit();
		}
		//鼠标离开时的背景颜色
		function mouseout(rowIndex,i){
		 var table=document.getElementById("workItemList");
		 
		 if (rowIndex==0)
		    table.rows(i).style.backgroundColor="#F1F1F1";
		 else
		    table.rows(i).style.backgroundColor="#ffffff";
		}
		//点击行中的任意位置，选中当前行的checkbox1
		/*function cb(obj)
		{
		    if (event.srcElement.type!="checkbox")
		        obj.childNodes[1].childNodes[0].checked=obj.childNodes[1].childNodes[0].checked?false:true;
		}*/
		//全选复选框
			function setsel(obj){
			  for(var i=0;i<=document.all("id").length-1;i++){
			  	document.all("id")[i].checked=obj.checked;
			  }
		}
		 	function go()
		    {
		       if(confirm("您是否确认已选知识点?"))
		          alert("已确认知识点！");
		       else
		          alert("重新选择");
		    }
			function fanhui(){
				var contextPath=document.all.contextPath.value;
				document.write("<form action='"+contextPath+"/selfAssessment!addTeachingCalendar.action' method='post' name=formx1 style='display:none'>");						
				document.write("</form>");
				document.formx1.submit();
				}			        
		</script>
<title>自我评价</title>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">请您选择您要评价的知识点</span>
			</td>

		</tr>
	</table>
<br><br>
<!--按钮区域 -->
<form
	action="<%=request.getContextPath()%>/selfAssessment!addTeachingCalendar.action"
	method="post" name="addTeachingProgramForm"><input type=hidden
	name=contextPath value="<%=request.getContextPath()%>" /> 
	<!--标题行和数据行 -->
<table>
	<tr>
		<td width="900"></td>
		<td ><INPUT TYPE="submit" value="选择"></td>
	</tr>
</table>
<table width="80%" bgcolor="#55AAEE" align="center">
	<tr align="center" valign="middle" height="28">
		<td width="2%" align="center" class="tabletitle">&nbsp;</td>
		<td align="center" class="tabletitle">知识点编号</td>
        <td align="center" class="tabletitle">知识点名称</td>
        <td align="center" class="tabletitle">重难点</td>
        <td align="center" class="tabletitle">掌握程度</td>
	</tr>
	
	<!--从库中检索出来的数据 -->
	<%
		int i = 0;
		int m = 0;
		int h = 0;
		int t = 0;
	%>
	<s:if test="CalendarList!=null">
		<s:iterator id="point" value="CalendarList" status="j">
			<tr>
				<td width="2%" bgcolor="#FFFFFF" align="center"><input name="checkbox"
					type="checkbox" value="<s:property value="KNOWLEDGEPOINTCODE"/>"></td>
				<td bgcolor="#FFFFFF" align="center"><s:property value="KNOWLEDGEPOINTCODE" /></td>
				<td bgcolor="#FFFFFF" align="center"><s:property value="knowledgePointName" /></td>
				<td bgcolor="#FFFFFF" align="center">
					 <select name="s1" id="s1">
                     <option value="01">了解</option>
                     <option value="02">理解</option>
                     <option value="03">掌握</option>
              </select>
				</td>
				<td bgcolor="#FFFFFF" align="center">
                     <select name="s1" id="s1">
                     <option value="01">重难点</option>
                     <option value="02">重点</option>
                     <option value="03">难点</option>
                     <option value="04">非重点难点</option>
              </select>
				</td>
			</tr>
		</s:iterator>
	</s:if>

	</form>
</body>
</html>