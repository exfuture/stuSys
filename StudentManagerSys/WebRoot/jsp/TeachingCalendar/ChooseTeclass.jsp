<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�α��ѯ</title>
<script language="javascript">
 function  check()       
  {   
          var sum=0;
          var   strRelationType1="";   
          var   strRelationType="";   
          for(var   i=0;i<TeclassForm.elements.length;i++)   
          {   
                  if(TeclassForm.elements[i].type=="checkbox")   
                  {   
                          if(TeclassForm.elements[i].checked)   
                          {   
                                  strRelationType   =   TeclassForm.elements[i].value; 
								  sum++;  
                          }   
                          else   
                          {   
                                  strRelationType   =   0;   
                          }   
                          strRelationType1   =   strRelationType1   +   "/"   +   strRelationType;   
                  }                     
          }   
        if(sum!=0)  TeclassForm.submit();
        else
         alert("��ѡ����Ҫ�ƶ���ѧ�����Ŀγ̱�!");  
         return false;
  }   
  function reset(){
  document.TeclassForm.reset();
  
  }

</script>
</head>

<body>
<form name="TeclassForm" action="<%=request.getContextPath()%>/teachingCalendar!DepartTeachingProgram.action" method="post">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
    <table width="95%" border="1" align="center" bordercolor="#0000ff" id="tblContent">
	<tr  align="center">
		 <td width="3%" align="center" nowrap>����ѡ������Ŀγ̱�</td>
		 <td width="16%" align="center" nowrap>�γ�����</td>
		 <td width="12%" align="center" nowrap>����˫��</td>
		<td width="8%" align="center" nowrap>�ڿΰ༶</td>
		<td width="8%" align="center" nowrap>ѧ��ѧ��</td>
	</tr>
	<s:if test="tclist!=null">
		<s:iterator id="l" value="tclist" status="i">

			<tr>
			  <td align="center" height="23" ><input type="checkbox" id="teclassIDs"
					name="teclassID" value="<s:property value="ID"/>"/></td>
				<td width="10%" align="center" bgcolor="#ffffff">
					<s:property value="LESSONNAME" /></td>  
				<td width="10%" align="center" bgcolor="#ffffff">
	            <s:property value="SINGLEORDOUBLE" /></td>
	             <td width="10%" align="center" bgcolor="#ffffff">
			<s:property value="HEAD" /></td>
				<td width="10%" align="center" bgcolor="#ffffff">
			<s:property value="SEMESTER" /></td>
			</tr>
		</s:iterator>
	</s:if>
	
</table>
<div align="center"><input type="button" value="�ύ" onclick="return check();" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="����" onclick="reset();"/></div>
</form>
</body>
</html>
