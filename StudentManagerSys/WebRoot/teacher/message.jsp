<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
	  <title>
	    <s:text name=""/>	    
	  </title>
	  <script language="JavaScript">
       var count = 2;
       function myTimer(){
          if(count!=0){
            count--;
            setTimeout("myTimer()",3000);
          }
          else{
            window.location.href=("<s:property value="url"/>");
          }
       }
     </script>
	</head>	
	<body onload="myTimer();">
		<div class="messagebox">
			<h1>���ױ���ְҵ����ѧԺ��Ϣ����ϵ��ʾ����</h1>
			<p><s:property value="message"/></p>
			<p><a href="<s:property value="url"/>">��������û���Զ���ת�����˴�</a></p>		
		</div>
	</body>
</html>