<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
		
      window.opener.document.getElementById("1201qqrxm").value=studentNames;
      window.close();
   }
</script>
<body>
<table width="100%">
     <tr align="right"><td align="right"><input type="button" onclick="setValue();" value="�ύ"/></td></tr>
	<tr>
	 <td>
	     <s:optiontransferselect name="leftSide" 
	     leftTitle="�༶ѧ��"     
	     list="{'����','������','���̳�','������','ά��˼','��˶','�ųɽ�','��˼��','����','��˹��','����','��־��',
	     '����','Ҷ����','���÷','��ѩ��','����','������','Ժ����','����','������','������','ţ����','�Ű���'}" 
	     addToRightLabel="����"  
	     addToLeftLabel="����"  
	     addAllToRightLabel="ȫ������"   
         addAllToLeftLabel="ȫ������"  
         selectAllLabel="ȫ��ѡ��"  
	     doubleName="rightSide"   
	     doubleList="{}"        
	     doubleName="right"   
	     rightTitle="ȱ��ѧ��"  
         doubleId="right"   >
	     </s:optiontransferselect>
     </td>
     </tr>
</table>

</body>
</html>