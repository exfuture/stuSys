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
			alert("���۳ɹ�");
			var url="studentAssessment!over.action";
			window.location.href=url;
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

			function xian(){
				
				 var aa=document.getElementById("aa");
				 var bu=document.getElementById("bu");
				 var bu1=document.getElementById("bu1");
				 document.getElementById("bu").disabled=true;
				 document.getElementById("bu1").disabled=false;
				 aa.style.display="block" ;
				}	
			
			function yin(){
				
				 var aa=document.getElementById("aa");
				 var bu=document.getElementById("bu");
				 var bu1=document.getElementById("bu1");
				 document.getElementById("bu").disabled=false;
				 document.getElementById("bu1").disabled=true;
				 aa.style.display="none" ;
				}	        
		</script>
<title>��������</title>
</head>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">


	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">ѧ������</span>
			</td>

		</tr>
	</table>
<br><br>
<!--��ť���� -->
<form action="<%=request.getContextPath()%>/selfAssessment!addTeachingCalendar.action"
	method="post" name="addTeachingProgramForm">
<table  width="80%" align=center border=0 >
	<tr>
		<td width="900"></td>
	    <td colspan="4" align="center">
		<input  type=button value=�ύ  onclick="addTeachingProgram();">      	     
	  </td>
	</tr>  
</table>
<input type=hidden name=contextPath value="<%=request.getContextPath()%>" /> <!--�����к������� -->
  <table id="workItemList" width="80%" bgcolor="#55AAEE" align="center">
    <!--������ -->
    <tr align="center" valign="middle" height="28">
      <td  align="center" class="tabletitle">֪ʶ���� </td>
      <td  align="center" class="tabletitle"> ֪ʶ������</td>
      <td  align="center" class="tabletitle">���ճ̶�</td>
	   <td  align="center" class="tabletitle">��ϵʵ�ʵ÷�</td>
    </tr>
    <!--�ӿ��м������������� -->
				<s:if test="kpList!=null">

				<s:iterator id="point" value="kpList "status="j">		
				<tr >
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="KNOWLEDGEPOINTCODE"/>
					</td>                 
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="KNOWLEDGEPOINTNAME"/>	
				</td>
				<td bgcolor="#FFFFFF" align="center">
                    <input type = "text"  name="fen1" size="5" maxlength="2"onblur="CheckForm()" >
               </td>
                     <td bgcolor="#FFFFFF" align="center">
                    <input type = "text"  name="fen2" size="5" maxlength="2"onblur="CheckForm()">
               </td>
				</tr>
				</s:iterator>
				</s:if>
  </table>

	<table  width="80%">
		<tr >
			<td width="40%">
			<td ><input id="bu" type="button" onclick="xian();" value="���н�ѧָ������"/></td>
			<td ><input id="bu1" type="button" onclick="yin();" value="ȡ����ѧָ������" disabled/></td>	
		</tr>
	</table>
<br><br><br>
<table id="aa" bgcolor="#5591DF" width="80%" align=center border=0 style="DISPLAY: none">
  <caption size="5" color="#ff8888">
  <strong>������������</strong>
  </caption>
  <tbody>
    <s:if test="assessmentList==null"> </s:if>
	<% int i=0; %>
     <tr onmouseover='this.style.backgroundColor="#CCDCFD"'
				onMouseOut="mouseout(this.rowIndex%2,this.rowIndex)"
				onClick="cb(this);">
    <s:iterator id="a" value="assessmentList" status="i">
      <tr >
        <td width="28%" ><s:property value="STANDARDNAME" /> </td>
	
       </tr>
      <s:if test='%{#a.STANDARDID.length()==6}'>
		<input type="hidden" name="listst[<%=i%>]" value="<s:property value="STANDARDID" />"/>
		<input type="hidden" name="listse[<%=i%>]" value="<s:property value="SELFCOEFFICIENT" />"/>
        <tr>
          <td><input type=radio value="1" name="list[<%=i%>]" id="<%=i%>">
            ����</td>
          <td width="22%"><input type=radio value="2" name="list[<%=i%>]" id="<%=i%>">
          ����</td>
          <td width="25%"><input type=radio value="3" name="list[<%=i%>]" id="<%=i%>">
            һ��</td>
          <td width="25%"><input type=radio value="4" name="list[<%=i%>]" id="<%=i%>">
            �ϲ�</td>
        </tr>
		<%i++; %>
      </s:if>
	
    </s:iterator>
	<tr>
		<td width="900"></td>
	    <td colspan="4" align="center">
		<input  type=button value=�ύ  onclick="addTeachingProgram();">      	           	     
	  </td>
	</tr>  
  </tbody>
</table>

	</form>
</body>
</html>