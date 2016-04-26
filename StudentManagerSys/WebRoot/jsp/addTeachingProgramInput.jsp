<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
		
		<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
		<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
		
		var m=document.getElementById("madeyear").value;
		function goBack()
		{
		
			var url="teachingProgram!addTeachingProgramInput.action";
			window.location.href=url;
		}
		function submitInsID()
		{
		
		var insid=document.getElementById("ins").value;
		
	
		document.write("<form action='teachingProgram!queryDept.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='insid' value='"+insid+"' />");
		document.write("</form>");
		document.formx1.submit();
				
		}
		function submitDeptID()
		{
		
		var deptid=document.getElementById("dept").value;
		var context=document.getElementById("context").value;
		document.write("<form action='"+context+"/teachingProgram!queryLesson.action' method='post' name=formx2 style='display:none'>");
		document.write("<input type='hidden' name='deptid' value='"+deptid+"' />");
		document.write("</form>");
		document.formx2.submit();
		
				
		}	
		
		function submitLessonID()
		{
	
		var leson=document.getElementById("leson").value;
		var context=document.getElementById("context").value;
		
		var mdy=document.getElementById("madeyear").value;

		document.write("<form action='"+context+"/teachingProgram!DirectToLessonLogin.action' method='post' name=formx3 style='display:none'>");
		document.write("<input type='hidden' name='lessonid' value='"+leson+"' />");
		document.write("<input type='hidden' name='madeyear' value='"+mdy+"' />");
		document.write("</form>");
		document.formx3.submit();
				
		}
		function addTeachingProgram()
		{
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
		
	//	var i=0;
		function getLearnHour(min,max,index)
		{
		var gindex=index;	
		var lhour=document.getElementById(gindex).value;
		if(lhour<min)
		{
			alert("所填写的学时小于所要求的最小学时，请重新填写！");
			document.getElementById(gindex).value="";		
				
		}
		if(lhour>max)
		{
			alert("所填写的学时大于所要求的最大学时，请重新填写！");
			document.getElementById(gindex).value="";	
	
		}
		
		
		
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
		</script>
		<title>课程制定教学大纲 </title>
	</head>
	<s:action id="teachingProgram" name="teachingProgram"/>
	<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
		<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">教学执行大纲管理</span>
			</td>
			
	</table>
		<input type="hidden" id="context" value="<%=request.getContextPath() %>"/>
<s:form theme="simple" action="teachingProgram!addTeachingProgram.action" >
<div width="1000px">



<table align="center">
	<tr>
				<td  >开课院系：<s:select
				id="ins" 
				label="开课院系"
				name="insid" 
				list="#teachingProgram.queryIns()"
				listKey="INSTITUTEID"
				listValue="INSTITUTENAME"
				onchange="submitInsID();"
			
				
				></s:select>
				</td>
			
			   <td>专业：
			   <s:select 
			   
			   id="dept" 
			   list="deptlist"
			   name="deptid"
			   label="专业"
			   listKey="DEPARTMENTID"
			   listValue="DEPARTMENTNAME"
			   headerKey="000"
			   headerValue="请选择专业"
			   onchange="submitDeptID();"
			
			   ></s:select>
			   </td>
			   
			   <td>
			 制定年份：
			 <%
			
			 
			  %>
			  

<s:textfield name="madeyear"></s:textfield>
</td>

	<td>课程名称：	
				
		
				<s:select
				id="leson" 
				name="lessonid"
				label="课程名称"
				list="lessonlist"
				listKey="code"
				listValue="name"
				headerKey="00"
			    headerValue="请选择课程"
				onchange="submitLessonID();"
				value="lessonvalue"
				
				></s:select>
		</td>
		
		
				
			
				<!--根据权限放置按钮 开始 -->

			<!--  	<td width="60" height="21" align="center" valign="middle"
					nowrap="nowrap" background="images/button2.gif"
					style="cursor: hand;" class="button" onClick="addTeachingProgram();">
					保存				</td>-->
					
					<td width="60" height="21" align="center" valign="middle">
					<s:submit value="保存"></s:submit>
					
					
					</td>
					
					
				
	</tr>
				<!--根据权限放置按钮 结束 -->
  </table>

		<!--标题行和数据行 -->	
	


<div>
			<table id="workItemList" width="80%" border="0"align="center">
				<!--标题行 -->
				<tr align="center" valign="middle" height="28">
					<td width=77 class="tabletitle">
						
				  </td>
					<td  align="center" class="tabletitle">单元编号</td>
					<td align="center" class="tabletitle">知识点编号 </td>
					<td  class="tabletitle">单元名称</td>
					<td  class="tabletitle">知识点名称</td>
					<td  class="tabletitle">最小学时</td>
				    <td  class="tabletitle">最大学时</td>
				    <td  class="tabletitle">掌握程度</td>
				    <td  class="tabletitle">重点难点</td>
				    <td  class="tabletitle">学时</td>
				
				   
				    
				</tr>
				<!--从库中检索出来的数据 -->
			<% 
				int i=0;
				int m=0;
				int h=0;
				int t=0;
				int u=0; 
				
			%>
			<s:if test="knowledgeUnits!=null">
			<s:iterator id="unit" value="knowledgeUnits" status="i">	
	
				<tr align="center" valign="middle" height="20" border="0" >
					<td  bgcolor="#55AAEE">
					
				<!-- 	<input type="checkbox" disabled= " name="units[<s:property value="#i.index"/>]" value="<s:property value="KNOWLEDGEUNITCODE"/>"/> -->	
				  </td>
					<td  align="center" bgcolor="#55AAEE" id="kuc"> <s:property value="KNOWLEDGEUNITCODE"/>		</td>	
					
				  <td  bgcolor="#55AAEE">&nbsp;</td>
				  <td  bgcolor="#55AAEE"><s:property value="KNOWLEDGEUNITNAME"/></td>
					<td  bgcolor="#55AAEE">&nbsp;					</td>
					<td bgcolor="#55AAEE">&nbsp;
					</td>
				    <td bgcolor="#55AAEE">&nbsp;</td>
				    <td bgcolor="#55AAEE">&nbsp;</td>
				    <td bgcolor="#55AAEE">&nbsp;</td>
				    <td bgcolor="#55AAEE">&nbsp;</td>
				  	    
				</tr>
				
				<s:if test="knowledgePoints!=null">
				<s:iterator id="point" value="#unit.knowledgePoints "status="j">			
				<tr >
					<td align="center" valign="middle"></td>
					<td align="center">
					
				
						<s:if test="%{#point.checked.length()==4}">
						
							<input type="checkbox"
								value="<s:property value="KNOWLEDGEPOINTCODE"/>"
							 	id="points" name="points" align="middle" checked />
						</s:if>
						<s:else>
							<input type="checkbox"
								value="<s:property value="KNOWLEDGEPOINTCODE"/>"
							 	id="points" name="points" align="middle"/>
					
						</s:else> 
					</td>

					<td align="center">
						<s:property value="KNOWLEDGEPOINTCODE"/>
					</td>
					<td align="center">&nbsp;</td>
					<td align="center">
						<s:property value="KNOWLEDGEPOINTNAME"/>
					</td>
					<td align="center">
						<s:property value="MINHOURS"/>
					</td>
				    <td align="center"><s:property value="MAXHOURS"/></td>
		
				    <td align="center">

				    <s:select id="master" name="masters" list="# {'0':'了解','1':'理解','2':'掌握'}" listKey="key" listValue="value" value="%{#point.mastlever}"></s:select>
				    
				   </td>
				    <td align="center">
				    
				   <s:select id="hard" name="hards" list="# {'0':'非重点难点','1':'重点','2':'难点','3':'重点难点'}" listKey="key" listValue="value" value="%{#point.hardlever}"></s:select>

				    <td align="center">
				    <input name="times${KNOWLEDGEPOINTCODE}" type="text" size="3" maxlength="3" id="<%=u%>"   onchange="getLearnHour(${MINHOURS},${MAXHOURS},<%=u%>);" value="<s:property value="learntime"/>" onfocus="if(value!='') {value=''}" onBlur="if(value=='') {value='请输入学时'}" >
				    <%u++;%>
				    </td>
				</tr>
				</s:iterator>
				</s:if>
			</s:iterator>
			</s:if>					
				<!-- 在列表数据为空的时候，要显示的提示信息 -->
  	</table>

</div>
</div>
	</s:form>
	</body>
</html>