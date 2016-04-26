<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title></title>
<script type="text/javascript">
	alert("密码错误！");

</script>
</head>
<body>
	<table align="center">
		<tr>
			<td>
				<img src="<%=request.getContextPath() %>/jsp/images/sb.jpg" width="200" height="200"></img>
			</td>
	
		</tr>
		<tr>
			<td>密码错误，若要重新进入前导课程编辑，请点击下面的链接</td>
		</tr>
		<tr>
			<td>
				 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<a href="<%=request.getContextPath() %>/leadLesson!passwordError.action?lessonCode=${lesson.code}">>>>>>></a>
			</td>	
		</tr>
		<tr>
			<td>密码错误，若要重新进入知识体系编辑，请点击下面的链接</td>
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
