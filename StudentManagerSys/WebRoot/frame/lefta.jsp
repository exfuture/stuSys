<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import = "java.util.*" %>
<%@ page import = "edu.sms.entity.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
		 
		 
			 alert(studentNames);
		window.opener.document.getElementById("1102qqrxm").value=studentNames;
        
        window.close();
		}
      
   
</script>
<body> 
 <s:iterator id="a"  value="#session.stus" status="st"  >	
		 
		<tr><td>('<s:property value='st.stuName'/>','<s:property value='#a.classNo'/>');</td></tr>	
		 
	
	
	</s:iterator>
	 
   
  
 <%  
	   
     	/*List list1 = new ArrayList();
     	list1.add("test1");
     	list1.add("test2");
     	request.setAttribute("list",list1);*/
     
	//List<Student> list = (List)session.getAttribute("stus");
  	
  	//for(int i = 0; i<list.size() ; i++ ){
  	
  	 //out.println(list.get(i).getStuName());
	//}
	
	%>
 
     </td>
     <td>
     <td><input type="button" onclick="setValue()">
	     <s:optiontransferselect name="leftSide"  
	     leftTitle="?????"     
	     list="{'kjjk','改改','改改方芳芳'}" 
	     addToRightLabel="????"  
	     addToLeftLabel="????"  
	     addAllToRightLabel="???????"   
         addAllToLeftLabel="???????"  
         selectAllLabel="??????"  
	     doubleName="rightSide"   
	     doubleList="{}"        
   
	     rightTitle="??????"  
         doubleId="right"   >
	     </s:optiontransferselect>
     </td>
     
     </td>
     
     </tr>
</table> 
 
</form>
</body>
</html>