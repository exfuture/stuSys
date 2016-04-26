<%@ page language="java" contentType="text/html; charset=gbk" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="lgd.jy444.yxn.page.Page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教学质量评估系统</title>
</head>
<link href="<%=request.getContextPath() %>/comm/style/mainStyle.css" rel="stylesheet" type="text/css">
<script Charset="gbk" Type="Text/JavaScript" Language="JavaScript" >
	function go(){
	
		if(check()){
			var pageNo = document.getElementById("pageno").value;		
			document.write("<form action='lesson!addPage.action' method='post' name=formx1 style='display:none'>");
			document.write("<input type='hidden' name='pageNo' value='"+pageNo+"'");
			document.write("</form>");
			document.formx1.submit();
		}else{
			alert("您所输入的页码有误，请检查后重新输入");
			}
	 }
	function check(){
	 var pageOne = document.getElementById("pageOne").value;	
	 var pageEnd = document.getElementById("pageEnd").value;	
	 var pageNo = document.getElementById("pageno").value;	
	 if(pageNo>=pageOne&&pageNo<=pageEnd){
			return true;
	 }else{
			return false;
			}
	
	 }
	function find_by_lessonName(){
		var lessonName = document.all.lessonName.value;
		document.write("<form action='leadLesson!queryLesson.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='lessonName' value='"+encodeURI(encodeURI(lessonName))+"'");
		document.write("</form>");
		document.formx1.submit();
		}
	
	function findall(){
		var typeCode = document.all.typeCode.value;
		document.write("<form action='leadLesson!queryAllLessons.action' method='post' name=formx1 style='display:none'>");
		document.write("<input type='hidden' name='typeCode' value='"+typeCode+"'");
		document.write("</form>");
		document.formx1.submit();
		}
</SCRIPT>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<body>

	<table width="100%" border=0 cellpadding=0 cellspacing=7 class="norepeat">
		<tr height="21">
			<td  height="21" align="left" valign="middle">
				<img src="<%=request.getContextPath() %>/comm/image/arrow_001.gif" width="17" height="17">
				<span class="pagetitle">前导课管理</span>
			</td>	
		   <td width="120" align="center"><input name="lessonName" type="text" size="15" value="请输入课程名"></td>
                    <td width=80 height="21"  valign="middle">
				<input type="button" value="查询" onClick="find_by_lessonName();" /> 
			</td>		
			<td width="30"></td>
           <td width="120">
           	 
           		<select name="typeCode" size="1" " style="width:120px"><option value="0"> 按课程类别查询 </option>                             
                    <s:iterator value="lessonTypeList">
					<option value="${typeCode}">${typeName}</option>
					</s:iterator> 
                </select>  
			            
		   </td>

			          <td width=80 height="21" align="center" valign="middle"
				nowrap="nowrap" background="../lx_image/button4.gif"
				style="cursor: hand;" class="button" onClick="findall();">查询 </td>
		</tr>
	</table>
	<table width="100%" border=0 cellpadding=0 cellspacing=7
		class="norepeat" style="table-layout: fixed; word-break: break-all;">

      </table>

 <br><br>
<form action="<%=request.getContextPath() %>/leadLesson!addPassword.action" method="post">

<table width="100%">
	<tr>
		<td width="80%"></td>
		<td ><INPUT TYPE="submit" value="课程选择"></td>
	</tr>
</table>
<table width="80%" bgcolor="#55AAEE" align="center" id="workItemList">	
	<s:if test="lessonList!=null">
	<s:iterator id="l" value="lessonList" status="i">	
				
		<tr align="center" valign="middle" height="20" border="0" 
			onmouseover='this.style.backgroundColor="#CCDCFD"'
		    onMouseOut="mouseout(this.rowIndex%2,this.rowIndex);" onClick="cb(this);">
			<td width=2% bgcolor="#FFFFFF">
				<input type="radio" name="lessonCode" value="<s:property value="code"/>"/>
			</td>
			<td align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<s:property value="name"/></td>
		</tr>

	</s:iterator>
	</s:if>
</table>
<TABLE width="80%" align="center">
 	 <tr>	
       <td  ><FONT size="2">共条<s:property value="page.rowCount"/>记录</FONT></td>
          
        <td ><FONT size="2">当前显示<span class="style2"><s:property value="page.beginShow"/>--<s:property value="page.endShow"/></span>条</FONT></td>
		<td  ><FONT size="2">转到<input type="text" size="2" name="pageNo" id="pageno"/>页</FONT><input type="button" value="go" onclick="go();"/></td>

		<% 
			Page p=new Page();
			p=(Page)request.getAttribute("page");
			if(p.getPageNo()==1){		
		%>
 		<td  nowrap><FONT size="2" color="999999">首页</FONT></a></td>
          <td  nowrap><FONT size="2" color="999999">上页</FONT></td>
   		<%} else{%>
		 <td  nowrap><a href="<%=request.getContextPath() %>/leadLesson!addPage.action?pageNo=<s:property value="page.pageOne"/>"><FONT size="2">首页</FONT></a></td>
		 <td  nowrap><a href="<%=request.getContextPath() %>/leadLesson!addPage.action?pageNo=<s:property value="page.pageLast"/>"><FONT size="2">上页</FONT></a></td>
		<%} 
		  if(p.getPageNo()==p.getPageEnd()){  
		%>
          <td nowrap><FONT size="2" color="999999">下页</FONT></td>
 		<td nowrap><FONT size="2" color="999999">尾页</FONT></td>
	     <%} else{%>
	    <td nowrap><a href="<%=request.getContextPath() %>/leadLesson!addPage.action?pageNo=<s:property value="page.pageNext"/>"><FONT size="2">下页</FONT></a></td>
		<td nowrap><a href="<%=request.getContextPath() %>/leadLesson!addPage.action?pageNo=<s:property value="page.pageEnd"/>"><FONT size="2">尾页</FONT></a></td>
		
		<%} %>
         <td nowrap align="right" ><FONT size="2">共<s:property value="page.pageCount"/>页</FONT></td>
       <td nowrap align="right" width="40"><FONT size="2">第<s:property value="page.pageNo"/>页</FONT></td>						
	</tr>
	<tr>
		<td colspan="12"  nowrap>
		</td>
	</tr>		
</TABLE>
<input type="hidden" value="${page.pageEnd }" id="pageEnd"/>
<input type="hidden" value="${page.pageOne }" id="pageOne"/>
</form>

</body>

	<!--JS Begin-->
		<script type="text/javascript">
		//When mouse move out the background colour.
		function mouseout(rowIndex,i){
 			var table=document.getElementById("workItemList");
 			if (rowIndex==0){
 				table.rows(i).style.backgroundColor="#F1F1F1";
 			}else{
 				table.rows(i).style.backgroundColor="#FFFFFF";
 			}
		}
		
		//When mouse click any line checked this line's checkbox.
		function cb(obj){
    		if (event.srcElement.type!="radio"){
    			obj.childNodes[0].childNodes[0].checked=obj.childNodes[0].childNodes[0].checked?false:true;
    		}
		}
		
		//Select all checkbox.
		function setsel(obj){
	  		for(var i=0;i<=document.all("id").length-1;i++){
	  			document.all("id")[i].checked=obj.checked;
	  		}
		}
		//This function is used to detail&updata&delete.

		</script>

	<!--JS End-->
</html>