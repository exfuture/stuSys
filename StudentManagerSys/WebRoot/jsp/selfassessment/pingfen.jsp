<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
		
	  <LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
	<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
		function beforeSubmit(form){
			if(form.fen1.value==''){
			alert('分数不能为空！');
			form.fen1.focus();
			return false;
			}
			if(form.fen2.value==''){
			alert('分数不能为空！');
			form.fen2.focus();
			return false;
			}
			return true;
		}

		//鼠标离开时的背景颜色
		function mouseout(rowIndex,i){
		 var table=document.getElementById("workItemList");
		 
		 if (rowIndex==0)
		    table.rows(i).style.backgroundColor="#F1F1F1";
		 else
		    table.rows(i).style.backgroundColor="#ffffff";
		}
		
		function setsel(obj){
			  for(var i=0;i<=document.all("id").length-1;i++){
			  	document.all("id")[i].checked=obj.checked;
			  }
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
		</script>
	<title>教师自我评分</title>
	</head>
	</head>
   <BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
	<table width="900" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">		
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">教师自我评价</span>
			</td>
		</tr>
	</table>
<br><br>
<!--按钮区域 -->
<form action="<%=request.getContextPath()%>/selfAssessment!Tiaozhuan.action" method="post" onSubmit="return beforeSubmit(this);"> 
<table   width="80%" align=center border=0>
	<tr>
		<td width="900"></td>
	    <td colspan="4" align="center">
		<input  type=submit value=提交 >      	     
	  </td>
	</tr>  
</table>   
<input type=hidden name=contextPath value="<%=request.getContextPath() %>" >     
<table id="workItemList" width="80%" bgcolor="#55AAEE" align="center">
    <!--标题行 -->
    <tr align="center" valign="middle" height="28">
		 <td align="center" class="tabletitle">知识点编号</td>
		<td width=249 class="tabletitle">知识点名称</td>
        <td width=249 class="tabletitle">实际教学得分</td>
        <td width=249 class="tabletitle">联系实际得分</td>
	</tr>
    <!--从库中检索出来的数据 -->
				<s:if test="CalendarList!=null">
				<s:iterator id="point" value="CalendarList "status="j">		
				<tr>
					<td bgcolor="#FFFFFF" align="center">
					<s:property value="KNOWLEDGEPOINTCODE"/>
                     </td>                 
					<td bgcolor="#FFFFFF"  align="center">
					<s:property value="knowledgePointName"/>	
				</td>					 
					<td bgcolor="#FFFFFF" align="center">
                    <input type = "text"  name="fen1" size="5" maxlength="2">
               </td>
                    <td bgcolor="#FFFFFF" align="center">
                    <input type = "text"  name="fen2" size="5" maxlength="2">
               </td>
			 	</tr>
					</s:iterator>
					</s:if>
  </table>
<table  width="80%">
		<tr >
			<td width="40%">
			<td ><input id="bu" type="button" onclick="xian();" value="进行教学指标评价"/></td>
			<td ><input id="bu1" type="button" onclick="yin();" value="取消教学指标评价" disabled/></td>	
		</tr>
	</table>
<br><br><br>
<table id="aa" bgcolor="#5591DF" width="80%" align=center border=0 style="DISPLAY: none">
  <caption size="5" color="#ff8888">
  <strong>请您进行评价</strong>
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
            优秀</td>
          <td width="22%"><input type=radio value="2" name="list[<%=i%>]" id="<%=i%>">
          良好</td>
          <td width="25%"><input type=radio value="3" name="list[<%=i%>]" id="<%=i%>">
            一般</td>
          <td width="25%"><input type=radio value="4" name="list[<%=i%>]" id="<%=i%>">
            较差</td>
        </tr>
		<%i++; %>
      </s:if>
    </s:iterator>
</form>
	</body>
</html>