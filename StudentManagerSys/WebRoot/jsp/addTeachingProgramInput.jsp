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
		//����뿪ʱ�ı�����ɫ
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
			alert("����д��ѧʱС����Ҫ�����Сѧʱ����������д��");
			document.getElementById(gindex).value="";		
				
		}
		if(lhour>max)
		{
			alert("����д��ѧʱ������Ҫ������ѧʱ����������д��");
			document.getElementById(gindex).value="";	
	
		}
		
		
		
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
		</script>
		<title>�γ��ƶ���ѧ��� </title>
	</head>
	<s:action id="teachingProgram" name="teachingProgram"/>
	<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
		<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">��ѧִ�д�ٹ���</span>
			</td>
			
	</table>
		<input type="hidden" id="context" value="<%=request.getContextPath() %>"/>
<s:form theme="simple" action="teachingProgram!addTeachingProgram.action" >
<div width="1000px">



<table align="center">
	<tr>
				<td  >����Ժϵ��<s:select
				id="ins" 
				label="����Ժϵ"
				name="insid" 
				list="#teachingProgram.queryIns()"
				listKey="INSTITUTEID"
				listValue="INSTITUTENAME"
				onchange="submitInsID();"
			
				
				></s:select>
				</td>
			
			   <td>רҵ��
			   <s:select 
			   
			   id="dept" 
			   list="deptlist"
			   name="deptid"
			   label="רҵ"
			   listKey="DEPARTMENTID"
			   listValue="DEPARTMENTNAME"
			   headerKey="000"
			   headerValue="��ѡ��רҵ"
			   onchange="submitDeptID();"
			
			   ></s:select>
			   </td>
			   
			   <td>
			 �ƶ���ݣ�
			 <%
			
			 
			  %>
			  

<s:textfield name="madeyear"></s:textfield>
</td>

	<td>�γ����ƣ�	
				
		
				<s:select
				id="leson" 
				name="lessonid"
				label="�γ�����"
				list="lessonlist"
				listKey="code"
				listValue="name"
				headerKey="00"
			    headerValue="��ѡ��γ�"
				onchange="submitLessonID();"
				value="lessonvalue"
				
				></s:select>
		</td>
		
		
				
			
				<!--����Ȩ�޷��ð�ť ��ʼ -->

			<!--  	<td width="60" height="21" align="center" valign="middle"
					nowrap="nowrap" background="images/button2.gif"
					style="cursor: hand;" class="button" onClick="addTeachingProgram();">
					����				</td>-->
					
					<td width="60" height="21" align="center" valign="middle">
					<s:submit value="����"></s:submit>
					
					
					</td>
					
					
				
	</tr>
				<!--����Ȩ�޷��ð�ť ���� -->
  </table>

		<!--�����к������� -->	
	


<div>
			<table id="workItemList" width="80%" border="0"align="center">
				<!--������ -->
				<tr align="center" valign="middle" height="28">
					<td width=77 class="tabletitle">
						
				  </td>
					<td  align="center" class="tabletitle">��Ԫ���</td>
					<td align="center" class="tabletitle">֪ʶ���� </td>
					<td  class="tabletitle">��Ԫ����</td>
					<td  class="tabletitle">֪ʶ������</td>
					<td  class="tabletitle">��Сѧʱ</td>
				    <td  class="tabletitle">���ѧʱ</td>
				    <td  class="tabletitle">���ճ̶�</td>
				    <td  class="tabletitle">�ص��ѵ�</td>
				    <td  class="tabletitle">ѧʱ</td>
				
				   
				    
				</tr>
				<!--�ӿ��м������������� -->
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

				    <s:select id="master" name="masters" list="# {'0':'�˽�','1':'���','2':'����'}" listKey="key" listValue="value" value="%{#point.mastlever}"></s:select>
				    
				   </td>
				    <td align="center">
				    
				   <s:select id="hard" name="hards" list="# {'0':'���ص��ѵ�','1':'�ص�','2':'�ѵ�','3':'�ص��ѵ�'}" listKey="key" listValue="value" value="%{#point.hardlever}"></s:select>

				    <td align="center">
				    <input name="times${KNOWLEDGEPOINTCODE}" type="text" size="3" maxlength="3" id="<%=u%>"   onchange="getLearnHour(${MINHOURS},${MAXHOURS},<%=u%>);" value="<s:property value="learntime"/>" onfocus="if(value!='') {value=''}" onBlur="if(value=='') {value='������ѧʱ'}" >
				    <%u++;%>
				    </td>
				</tr>
				</s:iterator>
				</s:if>
			</s:iterator>
			</s:if>					
				<!-- ���б�����Ϊ�յ�ʱ��Ҫ��ʾ����ʾ��Ϣ -->
  	</table>

</div>
</div>
	</s:form>
	</body>
</html>