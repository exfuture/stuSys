<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
 </HEAD>
 <s:action id="lesson" name="lesson"/>
 <BODY>
  <form action="<%=request.getContextPath() %>/lesson!delete.action" method="post">

  <TABLE  width="50%" border="1" cellspacing="1" cellpadding="2" class="bgtable" align="center" >
	<INPUT TYPE="submit" value="ɾ��">
	<tr>
			 <s:select label="�γ�"
				       name="lessonCode"
				       list="#lesson.query()"
				       listKey="code"
				       listValue="name"	
				       headerKey="0" headerValue="��ѡ��Ҫɾ���Ŀγ�"	
				/>	


    </TR>
	<tr>
		<td>����</td>
		<td><input type="password" name="password"/></td>
	</tr>
  </TABLE> 
  </form>
 </BODY>
</HTML>