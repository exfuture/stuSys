<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title></title>
<script type="text/javascript">
	alert("�����޸ĳɹ���");

</script>
</head>
<body>
	<table align="center">
		<tr>
			<td>
				<img src="<%=request.getContextPath() %>/jsp/images/xl.jpg" width="200" height="200"></img>
			</td>
	
		</tr>
		<tr>
			<td>��Ҫ�Կγ̵�ǰ���γ̽��б༭���������������</td>
		</tr>
		<tr>
			<td>
				 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<a href="<%=request.getContextPath() %>/leadLesson!passwordError.action?lessonCode=${lesson.code}">>>>>>></a>
			</td>	
		</tr>
		<tr>
			<td>��Ҫ�Կγ̵�֪ʶ��ϵ���б༭���������������</td>
		</tr>
		<tr>
			<td>
				 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<a href="<%=request.getContextPath() %>/knowledgeUnit!passwordError.action?lessonCode=${lesson.code}">>>>>>></a>
			</td>	
		</tr>
	</table>

</body>
</html>
