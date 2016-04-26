<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>选择姓名</title>
</head>
<script language="javascript">
   function setValue()
   {
      var list = document.getElementById("right");  
      var studentNames="";
		 if(list.options.length == 0){  
			 alert("请至少选择一个人或者关闭选择框！");  
			 return false;  
		 }  
		 else{  
			 for (var i = 0; i < list.options.length; i++) {  
			 //list.options[i].selected = true;  
			    studentNames=studentNames+list[i].value+","
			 }  
		 }  
		
      window.opener.document.getElementById("1203qqrxm").value=studentNames;
      window.close();
   }
</script>
<body>
<table width="100%">
     <tr align="right"><td align="right"><input type="button" onclick="setValue();" value="提交"/></td></tr>
	<tr>
	 <td>
	     <s:optiontransferselect name="leftSide" 
	     leftTitle="班级学生"     
	     list="{'田慧楠','白学文','李晗','杨政男','邹家伟','呼斯乐','王浩','盛啸','朱天宝','魏雯竹','阿拉斯','杨柳','范欣欣',
	            '马帅','赵丽丽','李嘉楠','赵双菲','赵宇','孙荫民','登布日乐','刘昊','甄小龙','杨旭'}" 
	     addToRightLabel="右移"  
	     addToLeftLabel="左移"  
	     addAllToRightLabel="全部右移"   
         addAllToLeftLabel="全部左移"  
         selectAllLabel="全部选择"  
	     doubleName="rightSide"   
	     doubleList="{}"        
	     doubleName="right"   
	     rightTitle="缺勤学生"  
         doubleId="right"   >
	     </s:optiontransferselect>
     </td>
     </tr>
</table>

</body>
</html>