<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import = "java.util.*" %>
<%@ page import = "edu.sms.entity.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>ѡ������</title>
</head>
<script language="javascript">
   function setValue()
   {
      var list = document.getElementById("right");  
      var studentNames="";
		 if(list.options.length == 0){  
			 alert("������ѡ��һ���˻��߹ر�ѡ���");  
			 return false;  
		 }  
		 else{  
			 for (var i = 0; i < list.options.length; i++) {  
			 //list.options[i].selected = true;  
			    studentNames=studentNames+list[i].value+","
			 }  
		 }  
		 
		 
			 
		window.opener.document.getElementById("1102qqrxm").value=studentNames;
        
        window.close();
		}
      
   
</script>
<body>#student.studentInClass()
 <s:iterator id="a"  value="#session.stus" status="st"  >	
		 
		<tr><td>('<s:property value='st.stuName'/>','<s:property value='#a.classNo'/>');</td></tr>	
		 
	
	
	</s:iterator>
	 
   
  
 <%  
	
	List<Student> list = (List)session.getAttribute("stus");
  	
  	for(int i = 0; i<list.size() ; i++ ){
  	
  	 out.println(list.get(i).getStuName());
	}
	
	%>
   <c:forEach items="${list}" var="s">
     	<c:out value="${s}"></c:out>
    </c:forEach></DIV>
     </td>
     <td>
     
     
     </td>
     
     </tr>
</table> 
 
</form>
</body>
</html>