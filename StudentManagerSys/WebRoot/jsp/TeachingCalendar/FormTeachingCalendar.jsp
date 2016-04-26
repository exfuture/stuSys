<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB2312">

		<link href="./style/lx_oa.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
		function goBack()
		{
			var url="teachingCalendar!teachingCalendar_Indextemp.action";
			window.location.href=url;
		}
		
		function FormTeachingCalendar()
		{   
			alert("提交");
			if(check())
			document.all.Form.submit();
			else alert("提交失败");
			document.focus();
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
		function check(){
		if(document.getElementById("week").value.length==0){
		alert("周次不许为空！");
		document.getElementById("week").focus();
		return false;
		}
		if(document.getElementById("lesson").value.length==0){
		alert("课次不能为空！");
		document.getElementById("lesson").focus();
		return false;
		}
		return true;	
		}
		
		</script>
		<title>课程制定教学大纲</title>
	</head>
	<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
		<!--按钮区域 -->
		<form
			action="<%=request.getContextPath()%>/teachingCalendar!DesignTeachingCalendar.action"
			method="post" name="Form">	
<table><td><input type="submit" value="提交"></td></table>
		</form>
	</body>
</html>